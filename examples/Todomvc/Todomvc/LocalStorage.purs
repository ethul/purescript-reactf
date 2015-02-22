module Todomvc.LocalStorage where

import Control.Monad.Eff (Eff())

import Data.Argonaut.Decode (DecodeJson, decodeJson)
import Data.Argonaut.Encode (EncodeJson, encodeJson)
import Data.Argonaut.Parser (jsonParser)
import Data.Argonaut.Printer (printJson)

import Data.Function
import Data.Either (either)
import Data.Maybe (Maybe(..))

foreign import data LocalStorageE :: !

type LocalStorageEff eff = Eff (localStorage :: LocalStorageE | eff)

get :: forall e a. (DecodeJson a) => String -> LocalStorageEff e (Maybe a)
get k = (\v -> either (const Nothing) Just (jsonParser v >>= decodeJson)) <$> getFn k

put :: forall e a. (EncodeJson a) => String -> a -> LocalStorageEff e Unit
put k v = runFn2 putFn k $ printJson $ encodeJson v

foreign import getFn """
  function getFn(key) {
    return function(){
      return localStorage.getItem(key);
    };
  }
""" :: forall e. String -> LocalStorageEff e String

foreign import putFn """
  function putFn(key, value) {
    return function(){
      localStorage.setItem(key, value);
    }
  }
""" :: forall e. Fn2 String String (LocalStorageEff e Unit)
