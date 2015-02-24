module Todomvc.List
  ( ListProps()
  , ListState()
  , spec
  , list
  ) where

import Data.Monoid (mempty)
import Data.Options ((:=))

import Optic.Core ((.~))

import React.Combinators ((|-), (|*))
import React.ComponentF
import React.ReactF

import qualified React.Attributes as Attr
import qualified React.Dom as Dom
import qualified React.Events as Evt
import qualified React.Spec as R

import Todomvc.Todo
import Todomvc.Types

type ListProps = { todos :: [Todo]
                 , onCompleted :: Todo -> TodomvcComponentEff
                 , onRemoved :: Todo -> TodomvcComponentEff
                 }

type ListState = Unit

props :: Props ListProps
props = Props { todos: []
              , onCompleted: const $ pure $ pure unit
              , onRemoved: const $ pure $ pure unit
              }

state :: State ListState
state = State unit

renderTodo ref props todo@(Todo a) =
  Dom.li (Attr.Attributes $ Attr.className := if a.completed then "completed" else "") mempty
  |- Dom.div (Attr.Attributes $ Attr.className := "view") mempty
     |* [ Dom.input (Attr.Attributes $ Attr.className := "toggle" <>
                                       Attr._type := "checkbox" <>
                                       Attr.checked := a.completed)
                    (Evt.Events $ Evt.onChange := Evt.SyntheticInputEventFn (onChange todo))
                    mempty
        , Dom.label'
          |- Dom.textnode a.title
        , Dom.button (Attr.Attributes $ Attr.className := "destroy")
                     (Evt.Events $ Evt.onClick := Evt.SyntheticMouseEventFn (onRemove todo))
                     mempty
        ]
  where
    onChange todo (Evt.SyntheticInputEvent e) = props.onCompleted todo
    onRemove todo (Evt.SyntheticMouseEvent e) = props.onRemoved todo

render :: RenderFn ListProps ListState
render ref (Props props) (State state) =
  Dom.section (Attr.Attributes $ Attr.id := "main") mempty
  |* [ Dom.input (Attr.Attributes $ Attr.id := "toggle-all" <> Attr._type := "checkbox") mempty mempty
     , Dom.label (Attr.Attributes $ Attr.htmlFor := "toggle-all") mempty
       |- Dom.textnode "Mark all as completed"
     , Dom.ul (Attr.Attributes $ Attr.id := "todo-list") mempty
       |* renderTodo ref props <$> props.todos
     ]

spec :: forall eff. Specification eff ListProps ListState
spec = R.spec props state render #
       R.setDisplayName .~ "List"

list :: React (Class ListProps ListState)
list = createClass spec
