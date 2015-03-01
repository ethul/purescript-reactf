module Todomvc.Footer
  ( FooterProps()
  , spec
  , footer
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

import Todomvc.Todo (Todo())
import Todomvc.Types

type FooterProps = { remainingCount :: Number
                   , todosCount :: Number
                   , onClearCompleted :: TodomvcComponent
                   }

props :: Props FooterProps
props = Props { remainingCount: 0
              , todosCount: 0
              , onClearCompleted: pure unit
              }

render :: PureRenderFn FooterProps
render (Props props) =
  Dom.footer (Attr.id := "footer") mempty
  .> [ Dom.span (Attr.id := "todo-count") mempty
       .> [ Dom.strong (Attr.style := {paddingRight: "5px"}) mempty
            .> Dom.raw (show props.remainingCount)
          , Dom.raw $ if props.remainingCount == 1
                              then "item left"
                              else "items left"
          ]
     , Dom.ul (Attr.id := "filters") mempty
       .> [ Dom.li'
            .> Dom.a'
               .> Dom.raw "All"
          , Dom.li'
            .> Dom.a'
               .> Dom.raw "Active"
          , Dom.li'
            .> Dom.a'
               .> Dom.raw "Completed"
          ]
     , Dom.button (Attr.id := "clear-completed")
                  (Evt.onClick := Evt.SyntheticMouseEventFn onClearCompleted)
       .> Dom.raw (show $ props.todosCount - props.remainingCount)
     ]
  where
    onClearCompleted (Evt.SyntheticMouseEvent e) = props.onClearCompleted

spec :: Specification _ FooterProps _
spec = R.pureSpec props render #
       R.setDisplayName .~ "Footer"

footer :: React (Class FooterProps _)
footer = createClass spec
