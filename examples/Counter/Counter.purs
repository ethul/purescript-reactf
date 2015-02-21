module Counter.Counter
  ( CounterProps()
  , CounterState()
  , spec
  , counter
  ) where

import Data.Options
import Data.Monoid (mempty)

import React.Attributes (Attributes(..))
import React.Combinators ((|-), (|*))
import React.ComponentF
import React.Dom (button, div', h1', textnode)
import React.Events (Events(..), SyntheticMouseEventFn(..), onClick)
import React.ReactF (Class(), React(), RenderFn(), Specification(..), createClass, createElementFromClass)

import qualified React.Spec as R
import qualified Counter.Count as C

type CounterProps = { title :: String }

type CounterState = { count :: Number }

type CounterReference = Reference CounterProps CounterState

props :: Props CounterProps
props = Props { title: "" }

state :: State CounterState
state = State { count: 0 }

events :: forall eff. CounterReference -> CounterState -> Number -> Events eff CounterProps CounterState
events ref state i = Events $ onClick := SyntheticMouseEventFn (const $ pure $ update)
  where update = setStateAsync ref (State { count: state.count + i })

render :: RenderFn CounterProps CounterState
render ref (Props props) (State state) = do
  countClass <- createClass C.spec

  let countProps = Props { count: state.count }

  html <- div'
          |* [ h1'
               |- textnode props.title
             , createElementFromClass countClass countProps mempty mempty
             , button mempty (events ref state 1)
               |- textnode "Increment"
             , button mempty (events ref state $ negate 1)
               |- textnode "Decrement"
             ]

  return html

spec :: forall eff. Specification eff CounterProps CounterState
spec = case R.spec props state render of Specification a -> Specification a { displayName = "Counter" }

counter :: React (Class CounterProps CounterState)
counter = createClass spec
