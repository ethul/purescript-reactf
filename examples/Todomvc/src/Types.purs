module Todomvc.Types
  ( TodomvcProps()
  , TodomvcState()
  , TodomvcComponent()
  ) where

import Data.Options
import Data.Function

import React.ComponentF (Component())

import Todomvc.LocalStorage (LocalStorageE())
import Todomvc.Todo (Todo())

type TodomvcProps = Unit

type TodomvcState = { todos :: [Todo] }

type TodomvcComponent = Component (localStorage :: LocalStorageE) Unit
