module Todomvc.Info
  ( InfoProps()
  , spec
  , info
  ) where

import Data.Monoid (mempty)
import Data.Options ((:=))

import Optic.Core ((.~))

import React.Combinators ((.>))
import React.ComponentF
import React.ReactF

import qualified React.Attributes as Attr
import qualified React.Dom as Dom
import qualified React.Spec as R

import Todomvc.Types

type InfoProps = Unit

props :: Props InfoProps
props = Props unit

render :: PureRenderFn InfoProps
render _ =
  Dom.footer (Attr.id := "info") mempty
  .> [ Dom.p'
       .> Dom.textnode "Double-click to edit a todo"
     , Dom.p'
       .> [ Dom.textnode "Info:"
          , Dom.a (Attr.href := "http://twitter.com/cburgdorf" <>
                   Attr.style := style) mempty
            .> Dom.textnode "Christoph Burgdorf"
          , Dom.textnode ","
          , Dom.a (Attr.href := "http://ericbidelman.com" <>
                   Attr.style := style) mempty
            .> Dom.textnode "Eric Bidelman"
          , Dom.textnode ","
          , Dom.a (Attr.href := "http://jacobmumm.com" <>
                   Attr.style := style') mempty
            .> Dom.textnode "Jacob Mumm"
          , Dom.textnode "and"
          , Dom.a (Attr.href := "http://igorminar.com" <>
                   Attr.style := style) mempty
            .> Dom.textnode "Igor Minar"
          ]
     , Dom.p'
       .> [ Dom.textnode "Part of"
          , Dom.a (Attr.href := "http://todomvc.com" <>
                   Attr.style := style) mempty
            .> Dom.textnode "TodoMVC"
          ]
     ]
  where
    style = { paddingLeft: "5px" }
    style' = { paddingLeft: "5px", paddingRight: "5px" }

spec :: Specification _ InfoProps _
spec = R.pureSpec props render #
       R.setDisplayName .~ "Info"

info :: React (Class InfoProps _)
info = createClass spec
