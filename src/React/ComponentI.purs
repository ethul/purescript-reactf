module React.ComponentI (run) where

import Control.Monad.Eff (Eff())
import Control.Monad.Free (goEffC)

import Data.Coyoneda (Natural())
import Data.Function

import React.ComponentF (Component(), ComponentF(..), Props(), State(), Reference())
import React.Types (ReactE())

componentN :: forall eff props state. Natural (ComponentF props state) (Eff (react :: ReactE | eff))
componentN (GetProps ref k) = k <$> runFn1 getPropsFn ref
componentN (GetState ref k) = k <$> runFn1 getStateFn ref
componentN (SetStateSync ref s a) = const a <$> runFn2 setStateSyncFn ref s
componentN (SetStateAsync ref s a) = const a <$> runFn2 setStateAsyncFn ref s

run :: forall props state a. Component props state a -> Eff (react :: ReactE) a
run fa = goEffC componentN fa

foreign import getPropsFn """
  function getPropsFn(ref) {
    return function(){
      var props = ref.props;
      return props;
    };
  }
""" :: forall eff props state. Fn1 (Reference props state)
                                   (Eff eff (Props props))

foreign import getStateFn """
  function getStateFn(ref) {
    return function(){
      var state = ref.state;
      return state;
    };
  }
""" :: forall eff props state. Fn1 (Reference props state)
                                   (Eff eff (State state))

foreign import setStateSyncFn """
  function setStateSyncFn(ref, state) {
    return function(){
      ref.setState(state, function(){
        console.log('TODO');
      });
    };
  }
""" :: forall eff props state. Fn2 (Reference props state)
                                   (State state)
                                   (Eff eff Unit)

foreign import setStateAsyncFn """
  function setStateAsyncFn(ref, state) {
    return function(){
      ref.setState(state);
    };
  }
""" :: forall eff props state. Fn2 (Reference props state)
                                   (State state)
                                   (Eff eff Unit)
