module Todomvc.Types
  ( TodomvcProps()
  , TodomvcState()
  , TodomvcComponent()
  , TodomvcComponentEff()
  ) where

import Control.Monad.Eff (Eff())

import Data.Options
import Data.Function

import React.ComponentF (Component())

import Todomvc.LocalStorage (LocalStorageE())
import Todomvc.Todo (Todo())

type TodomvcProps = Unit

type TodomvcState = { todos :: [Todo] }

type TodomvcComponent = Component TodomvcProps TodomvcState Unit

type TodomvcComponentEff = Eff (localStorage :: LocalStorageE) TodomvcComponent

instance isOptionStyle :: IsOption { | a } where
  (:=) k v = runFn2 styleFnOption k v

foreign import styleFnOption "function styleFnOption(k, v){return [[k, v]];}" :: forall a b c. Fn2 a b (Options c)
