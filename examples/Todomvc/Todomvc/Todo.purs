module Todomvc.Todo (Todo(..)) where

import Data.Argonaut ((.?), (:=), (~>), jsonEmptyObject)
import Data.Argonaut.Decode (DecodeJson, decodeJson)
import Data.Argonaut.Encode (EncodeJson, encodeJson)

newtype Todo = Todo { title :: String, completed :: Boolean }

instance decodeJsonTodo :: DecodeJson Todo where
  decodeJson json = do
    obj <- decodeJson json
    title <- obj .? "title"
    completed <- obj .? "completed"
    return $ Todo { title: title, completed: completed }

instance encodeJsonTodo :: EncodeJson Todo where
  encodeJson (Todo a) =
    "title" := a.title ~>
    "completed" := a.completed ~>
    jsonEmptyObject
