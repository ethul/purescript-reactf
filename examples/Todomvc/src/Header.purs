module Todomvc.Header
  ( HeaderProps()
  , HeaderState()
  , spec
  , header
  ) where

import Control.Monad.Eff.Class (liftEff)

import Data.Monoid (mempty)
import Data.Options ((:=))

import Optic.Core ((.~))

import React.Combinators ((.>))
import React.ComponentF
import React.ReactF
import React.Types

import qualified React.Attributes as Attr
import qualified React.Dom as Dom
import qualified React.Events as Evt
import qualified React.Spec as R

import Todomvc.Todo (Todo())
import Todomvc.Types

type HeaderProps = { handleSubmit :: String -> TodomvcComponent }

type HeaderState = { title :: String }

props :: Props HeaderProps
props = Props { handleSubmit: const $ pure unit }

state :: State HeaderState
state = State { title: "" }

render :: RenderFn HeaderProps HeaderState
render ref (Props props) (State state) =
  Dom.header (Attr.id := "header")
  .> [ Dom.h1'
       .> Dom.raw "todos"
     , Dom.form (Attr.id := "todo-form" <>
                 Evt.onSubmit := Evt.SyntheticEventFn onSubmit)
       .> Dom.input (Attr.id := "new-todo" <>
                     Attr.placeholder := "What needs to be done?" <>
                     Attr.value := state.title <>
                     Evt.onChange := Evt.SyntheticInputEventFn onChange) mempty
     ]
  where
    onChange (Evt.SyntheticInputEvent e) =
      setStateAsync ref $ State { title: eventTargetValue e.target }

    onSubmit evt@(Evt.SyntheticEvent e) = do
      liftEff $ effApplyFn0 e.preventDefault evt
      props.handleSubmit state.title
      setStateAsync ref $ State { title: "" }
      return unit


spec :: forall eff. Specification eff HeaderProps HeaderState
spec = R.impureSpec props state render #
       R.setDisplayName .~ "Header"

header :: React (Class HeaderProps HeaderState)
header = createClass spec

foreign import eventTargetValue "function eventTargetValue(e){return e.value;}" :: DOMEventTarget -> String
