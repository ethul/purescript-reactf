module Counter.Counter
  ( CounterProps()
  , CounterState()
  , spec
  , counter
  ) where

import Data.Options
import Data.Monoid (mempty)

import React.Attributes (Attributes(..))
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
  titleText <- textnode props.title
  titleEl <- h1' [titleText]

  let prps = Props { count: state.count }
  let evts = Events mempty
  countClass <- createClass C.spec
  countEl <- createElementFromClass countClass prps evts mempty

  incrText <- textnode "Increment"
  incrEl <- button (Attributes mempty) (events ref state 1) [incrText]

  decrText <- textnode "Decrement"
  decrEl <- button (Attributes mempty) (events ref state $ negate 1) [decrText]

  html <- div' [titleEl, countEl, incrEl, decrEl]
  return html

spec :: forall eff. Specification eff CounterProps CounterState
spec = case R.spec props state render of Specification a -> Specification a { displayName = "Counter" }

counter :: React (Class CounterProps CounterState)
counter = createClass spec
