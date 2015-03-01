module Todomvc.Main (main) where

import Data.Monoid (mempty)

import React.ComponentF
import React.ReactF
import React.ReactI
import React.Types

import qualified Todomvc.Header as Header
import qualified Todomvc.List as List
import qualified Todomvc.Footer as Footer
import qualified Todomvc.Info as Info
import qualified Todomvc.Todomvc as Todomvc

foreign import dom "var dom = document.body;" :: DOMElement

foreign import reactjs "var reactjs = require('react/addons');" :: ReactJsImport

program = do
  headerClass <- Header.header
  listClass <- List.list
  footerClass <- Footer.footer
  infoClass <- Info.info
  todomvcClass <- Todomvc.todomvc { header: headerClass
                                  , list: listClass
                                  , footer: footerClass
                                  , info: infoClass
                                  }
  todomvcEl <- createElementFromClass todomvcClass (Props unit) mempty mempty
  renderAsync todomvcEl dom

main = run (ReactJsAddons reactjs) program
