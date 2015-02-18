module Counter.Main where

import Control.Monad.Eff

import Data.Options
import Data.Monoid (mempty)

import React.Attributes (Attributes(..))
import React.ComponentF
import React.Dom (button, div', textnode)
import React.Events (Events(..), SyntheticMouseEventFn(..), onClick)
import React.ReactF
import React.ReactI
import React.Spec
import React.Types

foreign import dom "var dom = document.body;" :: DOMElement

foreign import reactjs "var reactjs = React;" :: ReactJs

countSpec =
  let props = Props { count: 0 }
      state = State unit
      render = \ref (Props p) _ -> textnode (show p.count) >>= (\a -> div' [a])
      init = spec props state render
   in case init of Specification a -> Specification a { displayName = "Count" }

counterSpec cnt =
  let props = Props { title: "" }
      state = State { count: 0 }
      update = \ref st i -> setStateAsync ref (State { count: st.count + i })
      events = \ref st i -> Events $ onClick := SyntheticMouseEventFn (\_ -> pure $ update ref st i)

      render = \ref (Props props) (State state) -> do
        title <- textnode props.title
        count <- createElementFromClass cnt (Props { count: state.count }) (Events mempty) mempty
        incr <- textnode "Increment" >>= (\a -> button (Attributes mempty) (events ref state 1) [a])
        decr <- textnode "Decrement" >>= (\a -> button (Attributes mempty) (events ref state $ negate 1) [a])
        html <- div' [title, count, incr, decr]
        return html

      init = spec props state render

    in case init of Specification a -> Specification a { displayName = "Counter" }

program = do
  countCls <- createClass countSpec
  counterCls <- createClass $ counterSpec countCls
  let props = Props { title: "The counter" }
  elem <- createElementFromClass counterCls props (Events mempty) mempty
  renderAsync elem dom

main = run reactjs program
