module Todomvc.List
  ( ListProps()
  , spec
  , list
  ) where

import Data.Monoid (mempty)
import Data.Options ((:=))

import Optic.Core ((.~))

import React.Combinators ((.>))
import React.ComponentF
import React.ReactF

import qualified React.Attributes as Attr
import qualified React.Dom as Dom
import qualified React.Events as Evt
import qualified React.Spec as R

import Todomvc.Todo
import Todomvc.Types

type ListProps = { todos :: [Todo]
                 , handleCompleted :: Todo -> TodomvcComponent
                 , handleRemoved :: Todo -> TodomvcComponent
                 }

props :: Props ListProps
props = Props { todos: []
              , handleCompleted: const $ pure unit
              , handleRemoved: const $ pure unit
              }

renderTodo props todo@(Todo a) =
  Dom.li (Attr.className := if a.completed then "completed" else "")
  .> Dom.div (Attr.className := "view")
     .> [ Dom.input (Attr.className := "toggle" <>
                     Attr._type := "checkbox" <>
                     Attr.checked := a.completed <>
                     Evt.onChange := Evt.SyntheticInputEventFn (onChange todo)) mempty
        , Dom.label'
          .> Dom.raw a.title
        , Dom.button (Attr.className := "destroy" <>
                      Evt.onClick := Evt.SyntheticMouseEventFn (onRemove todo)) mempty
        ]
  where
    onChange todo (Evt.SyntheticInputEvent e) = props.handleCompleted todo
    onRemove todo (Evt.SyntheticMouseEvent e) = props.handleRemoved todo

render :: PureRenderFn ListProps
render (Props props) =
  Dom.section (Attr.id := "main")
  .> [ Dom.input (Attr.id := "toggle-all" <> Attr._type := "checkbox") mempty
     , Dom.label (Attr.htmlFor := "toggle-all")
       .> Dom.raw "Mark all as completed"
     , Dom.ul (Attr.id := "todo-list")
       .> renderTodo props <$> props.todos
     ]

spec :: Specification _ ListProps _
spec = R.pureSpec props render #
       R.setDisplayName .~ "List"

list :: React (Class ListProps _)
list = createClass spec
