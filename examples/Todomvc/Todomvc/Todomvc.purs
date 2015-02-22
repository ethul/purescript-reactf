module Todomvc.Todomvc
  ( TodomvcSpecification()
  , spec
  , todomvc
  ) where

import Control.Monad.Eff (Eff())

import Data.Array (filter, length)
import Data.Maybe (fromMaybe)
import Data.Monoid (mempty)
import Data.Options ((:=))

import React.Combinators ((|-), (|*))
import React.ComponentF
import React.ReactF

import qualified React.Attributes as Attr
import qualified React.Dom as Dom
import qualified React.Spec as R

import Todomvc.Todo
import Todomvc.Types

import qualified Todomvc.Header as Header
import qualified Todomvc.List as List
import qualified Todomvc.LocalStorage as LocalStorage
import qualified Todomvc.Footer as Footer
import qualified Todomvc.Info as Info

type TodomvcLifecycleFn eff = LifecycleFn0 (localStorage :: LocalStorage.LocalStorageE | eff) TodomvcProps TodomvcState Unit

type TodomvcSpecification eff = Specification (localStorage :: LocalStorage.LocalStorageE | eff) TodomvcProps TodomvcState

props :: Props TodomvcProps
props = Props unit

state :: State TodomvcState
state = State { todos: [] }

storageId = "reactjsf:todomvc:todos"

componentDidMount :: forall eff. TodomvcLifecycleFn eff
componentDidMount ref = do
  maybeTodos <- LocalStorage.get storageId
  let todos = fromMaybe [] maybeTodos
  return $ setStateAsync ref (State { todos: todos })

update ref todos = do
  LocalStorage.put storageId (todos :: [Todo])
  return $ setStateAsync ref (State { todos: todos })

addTodo ref todos title =
  update ref updated
    where todo = Todo { title: title, completed: false }
          updated = todos <> [todo]

todoCompleted ref todos todo =
  update ref updated
    where complete t@(Todo a) = if refEq t todo then Todo a { completed = not a.completed } else t
          updated = complete <$> todos

todoRemoved ref todos todo =
  update ref updated
    where updated = filter (not <<< refEq todo) todos

clearCompletedTodos ref todos =
  update ref updated
    where updated = filter (\(Todo a) -> not a.completed) todos

render :: RenderFn TodomvcProps TodomvcState
render ref (Props props) (State state) = do
  headerClass <- Header.header
  listClass <- List.list
  footerClass <- Footer.footer
  infoClass <- Info.info

  let remaining = filter (\(Todo a) -> not a.completed) state.todos
      headerProps = Props { onSubmit: addTodo ref state.todos }
      listProps = Props { todos: state.todos
                        , onCompleted: todoCompleted ref state.todos
                        , onRemoved: todoRemoved ref state.todos
                        }
      footerProps = Props { remainingCount: length remaining
                          , todosCount: length state.todos
                          , onClearCompleted: clearCompletedTodos ref state.todos
                          }
      infoProps = Props unit

  html <- Dom.div'
          |* [ Dom.section (Attr.Attributes $ Attr.id := "todoapp") mempty
               |* [ createElementFromClass headerClass headerProps mempty mempty
                  , createElementFromClass listClass listProps mempty mempty
                  , createElementFromClass footerClass footerProps mempty mempty
                  ]
             , createElementFromClass infoClass infoProps mempty mempty
             ]

  return html

spec :: forall eff. TodomvcSpecification eff
spec = case R.spec props state render of
            Specification a -> Specification a { displayName = "Todomvc"
                                               , componentDidMount = componentDidMount
                                               }

todomvc :: React (Class TodomvcProps TodomvcState)
todomvc = createClass spec
