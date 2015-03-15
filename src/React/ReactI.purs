module React.ReactI
  ( ReactJs(..)
  , ReactJsImport()
  , run
  ) where

import Control.Monad.Eff (Eff())
import Control.Monad.Free (runFreeCM)

import Data.Coyoneda (Natural())
import Data.Foreign (Foreign())
import Data.Function
import Data.Options (Option(), options, key)
import Data.Maybe (Maybe(..), maybe)
import Data.StrMap (StrMap(), fromList, member)
import Data.Tuple (Tuple(..))

import React.Attributes (Attributes())
import React.ComponentF (Component(), Props(), Reference())
import React.ReactF
import React.TagName (TagName(Null, Raw))
import React.Types (DOMElement(), ReactE())

import qualified React.ComponentI as C
import qualified React.Events as E

data ReactJsImport

data ReactJs = ReactJs ReactJsImport | ReactJsAddons ReactJsImport

reactN :: forall eff. ReactJs -> Natural ReactF (Eff (react :: ReactE | eff))
reactN reactjs fa =
  case fa of
       CreateClass (PureSpecification spec) k ->
       k <$> runFn5 createClassFromPureSpecFn maybe rjs addons spec (run reactjs)

       CreateClass (ImpureSpecification spec) k ->
       k <$> runFn4 createClassFromImpureSpecFn rjs C.run spec (run reactjs)

       CreateElementFromClass cls props els k ->
       k <$> runFn4 createElementFromClassFn rjs cls props els

       CreateElementFromTagName tag attrs els k ->
       k <$> runFn9 createElementFromTagNameFn rjs C.run {_tag: tag, _null: Null, _raw: Raw} show attrs attributes events member els

       RenderSync el dom k ->
       k <$> runFn3 renderFn rjs el dom

       RenderAsync el dom k ->
       k <$> runFn3 renderFn rjs el dom

  where attributes a = options a
        rjs =
          case reactjs of
               ReactJs a -> a
               ReactJsAddons a -> a
        addons =
          case reactjs of
               ReactJs _ -> Nothing
               ReactJsAddons a -> Just a

run :: forall a. ReactJs -> React a -> Eff (react :: ReactE) a
run js fa = runFreeCM (reactN js) fa

foreign import createClassFromPureSpecFn """
  function createClassFromPureSpecFn(maybe, React, MaybeReactWithAddons, spec, run) {
    return function(){
      var mixins =
        maybe([])
             (function(a){ return [a.addons.PureRenderMixin]; })
             (MaybeReactWithAddons)
      ;
      var cls =
        React.createClass({
          render: function(){
            var props = this.props;

            var fa = spec.render(props);

            var el = run(fa)();

            return el;
          },

          getDefaultProps: function(){
            return spec.getDefaultProps;
          },

          mixins: mixins,

          displayName: spec.displayName
        })
      ;
      return cls;
    };
  }
""" :: forall eff props state a b. Fn5 (b -> (ReactJsImport -> b) -> Maybe ReactJsImport -> b)
                                       ReactJsImport
                                       (Maybe ReactJsImport)
                                       (PureSpec props)
                                       (React Element -> Eff (react :: ReactE) Element)
                                       (Eff eff (Class props state))

foreign import createClassFromImpureSpecFn """
  function createClassFromImpureSpecFn(React, runComponent, spec, run) {
    return function(){
      var cls =
        React.createClass({
          render: function(){
            var reference = this;

            var props = this.props;

            var state = this.state;

            var fa = spec.render(reference)(props)(state);

            var el = run(fa)();

            return el;
          },

          getInitialState: function(){
            return spec.getInitialState;
          },

          getDefaultProps: function(){
            return spec.getDefaultProps;
          },

          displayName: spec.displayName,

          componentWillMount: function(){
            var reference = this;
            var fa = spec.componentWillMount(reference);
            return runComponent(fa)();
          },

          componentDidMount: function(){
            var reference = this;
            var fa = spec.componentDidMount(reference);
            return runComponent(fa)();
          },

          componentWillReceiveProps: function(props){
            var reference = this;
            var fa = spec.componentWillReceiveProps(reference)(props);
            return runComponent(fa)();
          },

          shouldComponentUpdate: function(props, state){
            var reference = this;
            var fa = spec.shouldComponentUpdate(reference)(props)(state);
            return runComponent(fa)();
          },

          componentWillUpdate: function(props, state){
            var reference = this;
            var fa = spec.componentWillUpdate(reference)(props)(state);
            return runComponent(fa)();
          },

          componentDidUpdate: function(props, state){
            var reference = this;
            var fa = spec.componentDidUpdate(reference)(props)(state);
            return runComponent(fa)();
          },

          componentWillUnmount: function(){
            var reference = this;
            var fa = spec.componentWillUnmount(reference);
            return runComponent(fa)();
          }
        })
      ;
      return cls;
    };
  }
""" :: forall eff props state a. Fn4 ReactJsImport
                                     (Component eff a -> Eff (react :: ReactE) a)
                                     (ImpureSpec eff props state)
                                     (React Element -> Eff (react :: ReactE) Element)
                                     (Eff eff (Class props state))

foreign import createElementFromClassFn """
  function createElementFromClassFn(React, cls, props, els) {
    return function(){
      var elem = React.createElement(cls, props, els);

      return elem;
    };
  }
""" :: forall eff props state a. Fn4 ReactJsImport
                                     (Class props state)
                                     (Props props)
                                     Elements
                                     (Eff eff Element)

foreign import createElementFromTagNameFn """
  function createElementFromTagNameFn(React, runComponent, tags, show, attrs, attributesFn, events, member, els) {
    return function(){
      var tagName = show(tags._tag);

      var nullString = show(tags._null);

      var rawString = show(tags._raw);

      var attributes = attributesFn(attrs);

      var props = Object.keys(attributes).reduce(function(b, k){
        if (!member(k)(events)) b[k] = attributes[k];
        else {
          b[k] = function(event){
            var fa = attributes[k](event);
            return runComponent(fa)();
          };
        }
        return b;
      }, {});

      if (tagName === nullString) return null;
      else if (tagName === rawString) return els;
      else return React.DOM[tagName](props, els);
    };
  }
""" :: forall eff props state a. Fn9 ReactJsImport
                                     (Component eff a -> Eff (react :: ReactE) a)
                                     { _tag :: TagName, _null :: TagName, _raw :: TagName }
                                     (TagName -> String)
                                     Attributes
                                     (Attributes -> Foreign)
                                     (StrMap Unit)
                                     (String -> StrMap Unit -> Boolean)
                                     Elements
                                     (Eff eff Element)

foreign import renderFn """
  function renderFn(React, elem, dom){
    return function(){
      var component = React.render(elem, dom);
      return component;
    };
  }
""" :: forall eff props state. Fn3 ReactJsImport
                                   Element
                                   DOMElement
                                   (Eff eff (Reference props state))

events :: StrMap Unit
events = fromList $ (flip Tuple) unit <$> as
  where as = [ key E.onError
             , key E.onErrorCapture
             , key E.onLoad
             , key E.onLoadCapture
             , key E.onInput
             , key E.onInputCapture
             , key E.onReset
             , key E.onResetCapture
             , key E.onSubmit
             , key E.onSubmitCapture
             , key E.onCopy
             , key E.onCopyCapture
             , key E.onCut
             , key E.onCutCapture
             , key E.onPaste
             , key E.onPasteCapture
             , key E.onDrag
             , key E.onDragCapture
             , key E.onDragEnd
             , key E.onDragEndCapture
             , key E.onDragEnter
             , key E.onDragEnterCapture
             , key E.onDragExit
             , key E.onDragExitCapture
             , key E.onDragLeave
             , key E.onDragLeaveCapture
             , key E.onDragOver
             , key E.onDragOverCapture
             , key E.onDragStart
             , key E.onDragStartCapture
             , key E.onDrop
             , key E.onDropCapture
             , key E.onFocus
             , key E.onFocusCapture
             , key E.onBlur
             , key E.onBlurCapture
             , key E.onChange
             , key E.onChangeCapture
             , key E.onKeyDown
             , key E.onKeyDownCapture
             , key E.onKeyPress
             , key E.onKeyPressCapture
             , key E.onKeyUp
             , key E.onKeyUpCapture
             , key E.onClick
             , key E.onClickCapture
             , key E.onContextMenu
             , key E.onContextMenuCapture
             , key E.onDoubleClick
             , key E.onDoubleClickCapture
             , key E.onMouseDown
             , key E.onMouseDownCapture
             , key E.onMouseEnter
             , key E.onMouseEnterCapture
             , key E.onMouseLeave
             , key E.onMouseLeaveCapture
             , key E.onMouseMove
             , key E.onMouseMoveCapture
             , key E.onMouseOut
             , key E.onMouseOutCapture
             , key E.onMouseOver
             , key E.onMouseOverCapture
             , key E.onMouseUp
             , key E.onMouseUpCapture
             , key E.onTouchCancel
             , key E.onTouchCancelCapture
             , key E.onTouchEnd
             , key E.onTouchEndCapture
             , key E.onTouchMove
             , key E.onTouchMoveCapture
             , key E.onTouchStart
             , key E.onTouchStartCapture
             , key E.onScroll
             , key E.onScrollCapture
             , key E.onWheel
             , key E.onWheelCapture
             ]
