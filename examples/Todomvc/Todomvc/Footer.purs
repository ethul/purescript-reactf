module Todomvc.Footer
  ( FooterProps()
  , FooterState()
  , spec
  , footer
  ) where

import Data.Monoid (mempty)
import Data.Options ((:=))

import React.Combinators ((|-), (|*))
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
                   , onClearCompleted :: TodomvcComponentEff
                   }

type FooterState = Unit

props :: Props FooterProps
props = Props { remainingCount: 0
              , todosCount: 0
              , onClearCompleted: pure $ pure unit
              }

state :: State FooterState
state = State unit

render :: RenderFn FooterProps FooterState
render ref (Props props) (State state) =
  Dom.footer (Attr.Attributes $ Attr.id := "footer") mempty
  |* [ Dom.span (Attr.Attributes $ Attr.id := "todo-count") mempty
       |* [ Dom.strong (Attr.Attributes $ Attr.style := {paddingRight: "5px"}) mempty
            |- Dom.textnode (show props.remainingCount)
          , Dom.textnode $ if props.remainingCount == 1
                              then "item left"
                              else "items left"
          ]
     , Dom.ul (Attr.Attributes $ Attr.id := "filters") mempty
       |* [ Dom.li'
            |- Dom.a'
               |- Dom.textnode "All"
          , Dom.li'
            |- Dom.a'
               |- Dom.textnode "Active"
          , Dom.li'
            |- Dom.a'
               |- Dom.textnode "Completed"
          ]
     , Dom.button (Attr.Attributes $ Attr.id := "clear-completed")
                  (Evt.Events $ Evt.onClick := Evt.SyntheticMouseEventFn onClearCompleted)
       |- Dom.textnode (show $ props.todosCount - props.remainingCount)
     ]
  where
    onClearCompleted (Evt.SyntheticMouseEvent e) = props.onClearCompleted

spec :: forall eff. Specification eff FooterProps FooterState
spec = case R.spec props state render of Specification a -> Specification a { displayName = "Footer" }

footer :: React (Class FooterProps FooterState)
footer = createClass spec