module React.ComponentF
  ( Component()
  , ComponentF(..)
  , Reference()
  , Props(..)
  , State(..)
  , getState
  , setStateSync
  , setStateAsync
  ) where

import Control.Monad.Free (FreeC(), liftFC)

type Component props state = FreeC (ComponentF props state)

foreign import data Reference :: * -> * -> *

newtype Props props = Props props

newtype State state = State state

data ComponentF props state a
  = GetProps (Reference props state) (Props props -> a)
  | GetState (Reference props state) (State state -> a)
  | SetStateSync (Reference props state) (State state) a
  | SetStateAsync (Reference props state) (State state) a

getProps :: forall props state. Reference props state -> Component props state (Props props)
getProps ref = liftFC $ GetProps ref id

getState :: forall props state. Reference props state -> Component props state (State state)
getState ref = liftFC $ GetState ref id

setStateSync :: forall props state. Reference props state -> State state -> Component props state Unit
setStateSync ref state = liftFC $ SetStateSync ref state unit

setStateAsync :: forall props state. Reference props state -> State state -> Component props state Unit
setStateAsync ref state = liftFC $ SetStateAsync ref state unit
