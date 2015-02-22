module Todomvc.Info
  ( InfoProps()
  , InfoState()
  , spec
  , info
  ) where

import Data.Monoid (mempty)
import Data.Options ((:=))

import React.Combinators ((|-), (|*))
import React.ComponentF
import React.ReactF

import qualified React.Attributes as Attr
import qualified React.Dom as Dom
import qualified React.Spec as R

import Todomvc.Types

type InfoProps = Unit

type InfoState = Unit

props :: Props InfoProps
props = Props unit

state :: State InfoState
state = State unit

render :: RenderFn InfoProps InfoState
render ref (Props props) (State state) =
  Dom.footer (Attr.Attributes $ Attr.id := "info") mempty
  |* [ Dom.p'
       |- Dom.textnode "Double-click to edit a todo"
     , Dom.p'
       |* [ Dom.textnode "Info:"
          , Dom.a (Attr.Attributes $ Attr.href := "http://twitter.com/cburgdorf" <>
                                     Attr.style := style) mempty
            |- Dom.textnode "Christoph Burgdorf"
          , Dom.textnode ","
          , Dom.a (Attr.Attributes $ Attr.href := "http://ericbidelman.com" <>
                                     Attr.style := style) mempty
            |- Dom.textnode "Eric Bidelman"
          , Dom.textnode ","
          , Dom.a (Attr.Attributes $ Attr.href := "http://jacobmumm.com" <>
                                     Attr.style := style') mempty
            |- Dom.textnode "Jacob Mumm"
          , Dom.textnode "and"
          , Dom.a (Attr.Attributes $ Attr.href := "http://igorminar.com" <>
                                     Attr.style := style) mempty
            |- Dom.textnode "Igor Minar"
          ]
     , Dom.p'
       |* [ Dom.textnode "Part of"
          , Dom.a (Attr.Attributes $ Attr.href := "http://todomvc.com" <>
                                     Attr.style := style) mempty
            |- Dom.textnode "TodoMVC"
          ]
     ]
  where
    style = { paddingLeft: "5px" }
    style' = { paddingLeft: "5px", paddingRight: "5px" }

spec :: forall eff. Specification eff InfoProps InfoState
spec = case R.spec props state render of Specification a -> Specification a { displayName = "Info" }

info :: React (Class InfoProps InfoState)
info = createClass spec
