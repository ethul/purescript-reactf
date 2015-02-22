module Todomvc.Main (main) where

import Data.Monoid (mempty)

import React.ComponentF
import React.ReactF
import React.ReactI
import React.Types

import Todomvc.Todomvc (todomvc)

foreign import dom "var dom = document.body;" :: DOMElement

foreign import reactjs "var reactjs = require('react');" :: ReactJs

program = do
  todomvcClass <- todomvc
  todomvcEl <- createElementFromClass todomvcClass (Props unit) mempty mempty
  renderAsync todomvcEl dom

main = run reactjs program
