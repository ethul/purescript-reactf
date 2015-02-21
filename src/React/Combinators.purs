module React.Combinators
  ( (|-)
  , (|*)
  , child
  , children
  ) where

import Data.Traversable (sequence)

import React.ReactF (Element(), Elements(), React())

infixr 1 |-
infixr 1 |*

(|-) :: (Elements -> React Element) -> React Element -> React Element
(|-) = child

(|*) :: (Elements -> React Element) -> [React Element] -> React Element
(|*) = children

child :: (Elements -> React Element) -> React Element -> React Element
child k fa = fa >>= (\a -> k [a])

children :: (Elements -> React Element) -> [React Element] -> React Element
children k fas = sequence fas >>= k
