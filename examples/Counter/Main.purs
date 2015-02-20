module Counter.Main where

import Data.Monoid (mempty)

import React.ComponentF
import React.Events (Events(..))
import React.ReactF
import React.ReactI
import React.Types

import Counter.Counter (counter)

foreign import dom "var dom = document.body;" :: DOMElement

foreign import reactjs "var reactjs = React;" :: ReactJs

program = do
  cl <- counter
  let props = Props { title: "The counter" }
  el <- createElementFromClass cl props (Events mempty) mempty
  renderAsync el dom

main = run reactjs program
