module Counter.Count
  ( CountProps()
  , CountState()
  , spec
  , count
  ) where

import React.Combinators ((|-))
import React.ComponentF
import React.Dom (div', textnode)
import React.ReactF (Class(), React(), RenderFn(), Specification(..), createClass)
import qualified React.Spec as R

type CountProps = { count :: Number }

type CountState = Unit

props :: Props CountProps
props = Props { count: 0 }

state :: State CountState
state = State unit

render :: RenderFn CountProps CountState
render ref (Props props) (State state) =
  div'
  |- textnode (show props.count)

spec :: forall eff. Specification eff CountProps CountState
spec = case R.spec props state render of Specification a -> Specification a { displayName = "Count" }

count :: React (Class CountProps CountState)
count = createClass spec
