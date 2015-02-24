module Todomvc.Header
  ( HeaderProps()
  , HeaderState()
  , spec
  , header
  ) where

import Control.Monad.Eff.Unsafe (unsafeInterleaveEff)

import Data.Monoid (mempty)
import Data.Options ((:=))

import Optic.Core ((.~))

import React.Combinators ((|-), (|*))
import React.ComponentF
import React.ReactF
import React.Types

import qualified React.Attributes as Attr
import qualified React.Dom as Dom
import qualified React.Events as Evt
import qualified React.Spec as R

import Todomvc.Todo (Todo())
import Todomvc.Types

type HeaderProps = { onSubmit :: String -> TodomvcComponentEff }

type HeaderState = { title :: String }

props :: Props HeaderProps
props = Props { onSubmit: const $ pure $ pure unit }

state :: State HeaderState
state = State { title: "" }

render :: RenderFn HeaderProps HeaderState
render ref (Props props) (State state) =
  Dom.header (Attr.Attributes $ Attr.id := "header") mempty
  |* [ Dom.h1'
       |- Dom.textnode "todos"
     , Dom.form (Attr.Attributes $ Attr.id := "todo-form")
                (Evt.Events $ Evt.onSubmit := Evt.SyntheticInputEventFn onSubmit)
       |- Dom.input (Attr.Attributes $ Attr.id := "new-todo" <>
                                       Attr.placeholder := "What needs to be done?" <>
                                       Attr.value := state.title)
                    (Evt.Events $ Evt.onChange := Evt.SyntheticInputEventFn onChange) mempty
     ]
  where
    onChange (Evt.SyntheticInputEvent e) =
      pure $ setStateAsync ref $ State { title: eventTargetValue e.target }

    onSubmit (Evt.SyntheticInputEvent e) = do
      e.preventDefault
      unsafeInterleaveEff $ props.onSubmit state.title

spec :: forall eff. Specification eff HeaderProps HeaderState
spec = R.spec props state render #
       R.setDisplayName .~ "Header"

header :: React (Class HeaderProps HeaderState)
header = createClass spec

foreign import eventTargetValue "function eventTargetValue(e){return e.value;}" :: DOMEventTarget -> String
