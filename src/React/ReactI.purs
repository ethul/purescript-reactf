module React.ReactI
  ( ReactJs(..)
  , ReactJsImport()
  , run
  ) where

import Control.Monad.Eff (Eff())
import Control.Monad.Free (goEffC)

import Data.Coyoneda (Natural())
import Data.Foreign (Foreign())
import Data.Function
import Data.Options (options)
import Data.Maybe (Maybe(..), maybe)

import React.Attributes (Attributes())
import React.ComponentF (Component(), Props(), Reference())
import qualified React.ComponentI as CI
import React.Events (Events())
import React.ReactF
import React.TagName (TagName(Null, Raw))
import React.Types (DOMElement(), ReactE())

data ReactJsImport

data ReactJs = ReactJs ReactJsImport | ReactJsAddons ReactJsImport

reactN :: forall eff. ReactJs -> Natural ReactF (Eff (react :: ReactE | eff))
reactN reactjs fa =
  case fa of
       CreateClass (PureSpecification spec) k ->
       k <$> runFn5 createClassFromPureSpecFn maybe rjs addons spec (run reactjs)

       CreateClass (ImpureSpecification spec) k ->
       k <$> runFn4 createClassFromImpureSpecFn rjs CI.run spec (run reactjs)

       CreateElementFromClass cls props evts els k ->
       k <$> runFn7 createElementFromClassFn rjs CI.run cls props evts events els

       CreateElementFromTagName tag attrs evts els k ->
       k <$> runFn9 createElementFromTagNameFn rjs CI.run {_tag: tag, _null: Null, _raw: Raw} show attrs attributes evts events els

       RenderSync el dom k ->
       k <$> runFn3 renderFn rjs el dom

       RenderAsync el dom k ->
       k <$> runFn3 renderFn rjs el dom

  where attributes a = options a
        events a = options a
        rjs =
          case reactjs of
               ReactJs a -> a
               ReactJsAddons a -> a
        addons =
          case reactjs of
               ReactJs _ -> Nothing
               ReactJsAddons a -> Just a

run :: forall a. ReactJs -> React a -> Eff (react :: ReactE) a
run js fa = goEffC (reactN js) fa

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
  function createElementFromClassFn(React, runComponent, cls, props, evts, eventsFn, els) {
    return function(){
      var events = eventsFn(evts);

      var events$prime = Object.keys(events).reduce(function(b, k){
        b[k] = function(event){
          var fa = events[k](event);
          return runComponent(fa)();
        };
        return b;
      }, {});

      var props$prime = React.__spread({}, events$prime, props);

      var elem = React.createElement(cls, props$prime, els);

      return elem;
    };
  }
""" :: forall eff props state a. Fn7 ReactJsImport
                                     (Component eff a -> Eff (react :: ReactE) a)
                                     (Class props state)
                                     (Props props)
                                     (Events eff)
                                     (Events eff -> Foreign)
                                     Elements
                                     (Eff eff Element)

foreign import createElementFromTagNameFn """
  function createElementFromTagNameFn(React, runComponent, tags, show, attrs, attributesFn, evts, eventsFn, els) {
    return function(){
      var tagName = show(tags._tag);

      var nullString = show(tags._null);

      var rawString = show(tags._raw);

      var attributes = attributesFn(attrs);

      var events = eventsFn(evts);

      var events$prime = Object.keys(events).reduce(function(b, k){
        b[k] = function(event){
          var fa = events[k](event);
          return runComponent(fa)();
        };
        return b;
      }, {});

      var props = React.__spread({}, attributes, events$prime);

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
                                     (Events eff)
                                     (Events eff -> Foreign)
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
