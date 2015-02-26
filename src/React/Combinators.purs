module React.Combinators
  ( IsElementNestable
  , (.>)
  ) where

import Control.Monad.Free (Free())

import Data.Coyoneda (Coyoneda())
import Data.Traversable (sequence)

import React.ReactF (Element(), Elements(), React(), ReactF())

infixr 1 .>

class IsElementNestable a where
  (.>) :: (Elements -> React Element) -> a -> React Element

instance isElementNestableOne :: IsElementNestable (Free (Coyoneda ReactF) Element) where
  (.>) k fa = fa >>= (\a -> k [a])

instance isElementNestableMany :: IsElementNestable [(Free (Coyoneda ReactF) Element)] where
  (.>) k fas = sequence fas >>= k
