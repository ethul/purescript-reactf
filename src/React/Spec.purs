module React.Spec (spec) where

import React.ComponentF (Props(..), State(..))
import React.ReactF (RenderFn(), Specification(..))
import React.Dom (null)

spec :: forall eff props state. Props props -> State state -> RenderFn props state -> Specification eff props state
spec props state render
  = Specification { render: render
                  , getInitialState: state
                  , getDefaultProps: props
                  , displayName: ""
                  , componentWillMount: \_ -> pure $ pure unit
                  , componentDidMount: \_ -> pure $ pure unit
                  , componentWillReceiveProps: \_ _ -> pure $ pure unit
                  , shouldComponentUpdate: \_ _ _ -> pure $ pure true
                  , componentWillUpdate: \_ _ _ -> pure $ pure unit
                  , componentDidUpdate: \_ _ _ -> pure $ pure unit
                  , componentWillUnmount: \_ -> pure $ pure unit
                  }
