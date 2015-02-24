module React.Spec
  ( spec
  , setDisplayName
  , setComponentWillMount
  , setComponentDidMount
  , setComponentWillReceiveProps
  , setShouldComponentUpdate
  , setComponentWillUpdate
  , setComponentDidUpdate
  , setComponentWillUnmount
  ) where

import Optic.Core (SetterP())

import React.ComponentF
import React.ReactF
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

setDisplayName :: forall eff props state. SetterP (Specification eff props state) String
setDisplayName k (Specification spec) = k spec.displayName <#> \a -> Specification spec { displayName = a }

setComponentWillMount :: forall eff props state. SetterP (Specification eff props state) (ComponentWillMount eff props state)
setComponentWillMount k (Specification spec) = k spec.componentWillMount <#> \a -> Specification spec { componentWillMount = a }

setComponentDidMount :: forall eff props state. SetterP (Specification eff props state) (ComponentDidMount eff props state)
setComponentDidMount k (Specification spec) = k spec.componentDidMount <#> \a -> Specification spec { componentDidMount = a }

setComponentWillReceiveProps :: forall eff props state. SetterP (Specification eff props state) (ComponentWillReceiveProps eff props state)
setComponentWillReceiveProps k (Specification spec) = k spec.componentWillReceiveProps <#> \a -> Specification spec { componentWillReceiveProps = a }

setShouldComponentUpdate :: forall eff props state. SetterP (Specification eff props state) (ShouldComponentUpdate eff props state)
setShouldComponentUpdate k (Specification spec) = k spec.shouldComponentUpdate <#> \a -> Specification spec { shouldComponentUpdate = a }

setComponentWillUpdate :: forall eff props state. SetterP (Specification eff props state) (ComponentWillUpdate eff props state)
setComponentWillUpdate k (Specification spec) = k spec.componentWillUpdate <#> \a -> Specification spec { componentWillUpdate = a }

setComponentDidUpdate :: forall eff props state. SetterP (Specification eff props state) (ComponentDidUpdate eff props state)
setComponentDidUpdate k (Specification spec) = k spec.componentDidUpdate <#> \a -> Specification spec { componentDidUpdate = a }

setComponentWillUnmount :: forall eff props state. SetterP (Specification eff props state) (ComponentWillUnmount eff props state)
setComponentWillUnmount k (Specification spec) = k spec.componentWillUnmount <#> \a -> Specification spec { componentWillUnmount = a }
