module React.ReactI
  ( ReactJs()
  , run
  ) where

import Control.Monad.Eff (Eff())
import Control.Monad.Free (goEffC)

import Data.Coyoneda (Natural())
import Data.Foreign (Foreign())
import Data.Function
import Data.Options (options)

import React.Attributes (Attributes(..))
import React.ComponentF (Component(), Props(), Reference())
import qualified React.ComponentI as CI
import React.Events (Events(..))
import React.ReactF (Class(), DisplayName(), Element(), Elements(), ReactF(..), React(), Specification())
import React.TagName (TagName(Null, Textnode))
import React.Types (DOMElement(), ReactE())

foreign import data ReactJs :: *

reactN :: forall eff. ReactJs -> Natural ReactF (Eff (react :: ReactE | eff))
reactN rjs fa =
  case fa of
       (CreateClass spec k) ->
       k <$> runFn4 createClassFn rjs CI.run spec (run rjs)

       (CreateElementFromClass cls props evts els k) ->
       k <$> runFn7 createElementFromClassFn rjs CI.run cls props evts events els

       (CreateElementFromTagName tag attrs evts els k) ->
       k <$> runFn9 createElementFromTagNameFn rjs CI.run {_tag: tag, _null: Null, _textNode: Textnode} show attrs attributes evts events els

       (RenderSync el dom k) ->
       k <$> runFn3 renderFn rjs el dom

       (RenderAsync el dom k) ->
       k <$> runFn3 renderFn rjs el dom

  where attributes (Attributes a) = options a
        events (Events a) = options a

run :: forall a. ReactJs -> React a -> Eff (react :: ReactE) a
run js fa = goEffC (reactN js) fa

foreign import createClassFn """
  function createClassFn(React, componentI, spec, run) {
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
            var fa = spec.componentWillMount(reference)();
            return componentI(fa)();
          },

          componentDidMount: function(){
            var reference = this;
            var fa = spec.componentDidMount(reference)();
            return componentI(fa)();
          },

          componentWillReceiveProps: function(props){
            var reference = this;
            var fa = spec.componentWillReceiveProps(reference)(props)();
            return componentI(fa)();
          },

          shouldComponentUpdate: function(props, state){
            var reference = this;
            var fa = spec.shouldComponentUpdate(reference)(props)(state)();
            return componentI(fa)();
          },

          componentWillUpdate: function(props, state){
            var reference = this;
            var fa = spec.componentWillUpdate(reference)(props)(state)();
            return componentI(fa)();
          },

          componentDidUpdate: function(props, state){
            var reference = this;
            var fa = spec.componentDidUpdate(reference)(props)(state)();
            return componentI(fa)();
          },

          componentWillUnmount: function(){
            var reference = this;
            var fa = spec.componentWillUnmount(reference)();
            return componentI(fa)();
          }
        })
      ;
      return cls;
    };
  }
""" :: forall eff props state a. Fn4 ReactJs
                                     (Component props state a -> Eff (react :: ReactE) a)
                                     (Specification eff props state)
                                     (React Element -> Eff (react :: ReactE) Element)
                                     (Eff eff (Class props state))

foreign import createElementFromClassFn """
  function createElementFromClassFn(React, componentI, cls, props, evts, eventsFn, els) {
    return function(){
      var events = eventsFn(evts);

      var events$prime = Object.keys(events).reduce(function(b, k){
        b[k] = function(event){
          var fa = events[k](event)();
          return componentI(fa)();
        };
        return b;
      }, {});

      var props$prime = React.__spread({}, events$prime, props);

      var elem = React.createElement(cls, props$prime, els);

      return elem;
    };
  }
""" :: forall eff props state a. Fn7 ReactJs
                                     (Component props state a -> Eff (react :: ReactE) a)
                                     (Class props state)
                                     (Props props)
                                     (Events eff props state)
                                     (Events eff props state -> Foreign)
                                     Elements
                                     (Eff eff Element)

foreign import createElementFromTagNameFn """
  function createElementFromTagNameFn(React, componentI, tags, show, attrs, attributesFn, evts, eventsFn, els) {
    return function(){
      var tagName = show(tags._tag);

      var nullString = show(tags._null);

      var textNodeString = show(tags._textNode);

      var attributes = attributesFn(attrs);

      var events = eventsFn(evts);

      var events$prime = Object.keys(events).reduce(function(b, k){
        b[k] = function(event){
          var fa = events[k](event)();
          return componentI(fa)();
        };
        return b;
      }, {});

      var props = React.__spread({}, attributes, events$prime);

      if (tagName === nullString) return null;
      else if (tagName === textNodeString) return els;
      else return React.DOM[tagName](props, els);
    };
  }
""" :: forall eff props state a. Fn9 ReactJs
                                     (Component props state a -> Eff (react :: ReactE) a)
                                     { _tag :: TagName, _null :: TagName, _textNode :: TagName }
                                     (TagName -> String)
                                     Attributes
                                     (Attributes -> Foreign)
                                     (Events eff props state)
                                     (Events eff props state -> Foreign)
                                     Elements
                                     (Eff eff Element)

foreign import renderFn """
  function renderFn(React, elem, dom){
    return function(){
      var component = React.render(elem, dom);
      return component;
    };
  }
""" :: forall eff props state. Fn3 ReactJs
                                   Element
                                   DOMElement
                                   (Eff eff (Reference props state))
