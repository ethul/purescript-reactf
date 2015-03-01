module React.Types
  ( DOMAbstractView()
  , DOMDataTransfer()
  , DOMElement()
  , DOMEvent()
  , DOMEventTarget()
  , DOMTouchList()
  , DOMString()
  , ReactE()
  , EffApplyFn0()
  , EffApplyFns
  , effApplyFn0
  , effApplyFn0Fn
  ) where

import Control.Monad.Eff (Eff())

import Data.Function

import DOM (DOM())

data DOMAbstractView

data DOMElement

data DOMEvent

data DOMEventTarget

data DOMDataTransfer

data DOMTouchList

data DOMString

data EffApplyFn0 ret

class EffApplyFns a where
  effApplyFn0 :: forall eff ret. EffApplyFn0 ret -> a -> Eff (dom :: DOM | eff) ret

foreign import effApplyFn0Fn """
  function effApplyFn0Fn(fn, a){
    return function(){
      return fn.apply(a, []);
    };
  }
""" :: forall eff ret a. Fn2 (EffApplyFn0 ret)
                             a
                             (Eff (dom :: DOM | eff) ret)

foreign import data ReactE :: !
