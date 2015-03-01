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

import Control.Monad.Eff (Eff())
import Control.Monad.Eff.Class (MonadEff)
import Control.Monad.Free (Free(), FreeC(), liftFC)

import Data.Coyoneda (Coyoneda())

type Component eff = FreeC (ComponentF eff)

data Reference props state

newtype Props props = Props props

newtype State state = State state

data ComponentF eff a
  = GetProps (forall props state. Reference props state) (forall props. Props props -> a)
  | GetState (forall props state. Reference props state) (forall state. State state -> a)
  | SetStateSync (forall props state. Reference props state) (forall state. State state) a
  | SetStateAsync (forall props state. Reference props state) (forall state. State state) a
  | ComponentEff (forall ret. Eff eff ret) (forall ret. ret -> a)

instance monadEffComponent :: MonadEff eff (Free (Coyoneda (ComponentF eff))) where
  liftEff = componentEff

getProps :: forall eff props state. Reference props state -> Component eff (Props props)
getProps ref = liftFC $ GetProps (coerce ref) coerce

getState :: forall eff props state. Reference props state -> Component eff (State state)
getState ref = liftFC $ GetState (coerce ref) coerce

setStateSync :: forall eff props state. Reference props state -> State state -> Component eff Unit
setStateSync ref state = liftFC $ SetStateSync (coerce ref) (coerce state) unit

setStateAsync :: forall eff props state. Reference props state -> State state -> Component eff Unit
setStateAsync ref state = liftFC $ SetStateAsync (coerce ref) (coerce state) unit

componentEff :: forall eff ret. Eff eff ret -> Component eff ret
componentEff eff = liftFC $ ComponentEff (coerce eff) coerce

foreign import coerce "function coerce(a){return a;}" :: forall a b. a -> b
