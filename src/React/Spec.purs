module React.Spec
  ( pureSpec
  , impureSpec
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

impureSpec :: forall eff props state. Props props -> State state -> RenderFn props state -> Specification eff props state
impureSpec props state render
  = ImpureSpecification { render: render
                        , getInitialState: state
                        , getDefaultProps: props
                        , displayName: ""
                        , componentWillMount: const $ pure unit
                        , componentDidMount: const $ pure unit
                        , componentWillReceiveProps: const $ const $ pure unit
                        , shouldComponentUpdate: const $ const $ const $ pure true
                        , componentWillUpdate: const $ const $ const $ pure unit
                        , componentDidUpdate: const $ const $ const $ pure unit
                        , componentWillUnmount: const $ pure unit
                        }

pureSpec :: forall props. Props props -> PureRenderFn props -> Specification _ props _
pureSpec props render
  = PureSpecification { render: render
                      , getDefaultProps: props
                      , displayName: ""
                      }

setDisplayName :: forall eff props state. SetterP (Specification eff props state) String
setDisplayName k (ImpureSpecification spec) = k spec.displayName <#> \a -> ImpureSpecification spec { displayName = a }
setDisplayName k (PureSpecification spec) = k spec.displayName <#> \a -> PureSpecification spec { displayName = a }

setComponentWillMount :: forall eff props state. SetterP (Specification eff props state) (ComponentWillMount eff props state)
setComponentWillMount k (ImpureSpecification spec) = k spec.componentWillMount <#> \a -> ImpureSpecification spec { componentWillMount = a }
setComponentWillMount k spec = k (const $ pure unit) <#> const spec

setComponentDidMount :: forall eff props state. SetterP (Specification eff props state) (ComponentDidMount eff props state)
setComponentDidMount k (ImpureSpecification spec) = k spec.componentDidMount <#> \a -> ImpureSpecification spec { componentDidMount = a }
setComponentDidMount k spec = k (const $ pure unit) <#> const spec

setComponentWillReceiveProps :: forall eff props state. SetterP (Specification eff props state) (ComponentWillReceiveProps eff props state)
setComponentWillReceiveProps k (ImpureSpecification spec) = k spec.componentWillReceiveProps <#> \a -> ImpureSpecification spec { componentWillReceiveProps = a }
setComponentWillReceiveProps k spec = k (const $ const $ pure unit) <#> const spec

setShouldComponentUpdate :: forall eff props state. SetterP (Specification eff props state) (ShouldComponentUpdate eff props state)
setShouldComponentUpdate k (ImpureSpecification spec) = k spec.shouldComponentUpdate <#> \a -> ImpureSpecification spec { shouldComponentUpdate = a }
setShouldComponentUpdate k spec = k (const $ const $ const $ pure true) <#> const spec

setComponentWillUpdate :: forall eff props state. SetterP (Specification eff props state) (ComponentWillUpdate eff props state)
setComponentWillUpdate k (ImpureSpecification spec) = k spec.componentWillUpdate <#> \a -> ImpureSpecification spec { componentWillUpdate = a }
setComponentWillUpdate k spec = k (const $ const $ const $ pure unit) <#> const spec

setComponentDidUpdate :: forall eff props state. SetterP (Specification eff props state) (ComponentDidUpdate eff props state)
setComponentDidUpdate k (ImpureSpecification spec) = k spec.componentDidUpdate <#> \a -> ImpureSpecification spec { componentDidUpdate = a }
setComponentDidUpdate k spec = k (const $ const $ const $ pure unit) <#> const spec

setComponentWillUnmount :: forall eff props state. SetterP (Specification eff props state) (ComponentWillUnmount eff props state)
setComponentWillUnmount k (ImpureSpecification spec) = k spec.componentWillUnmount <#> \a -> ImpureSpecification spec { componentWillUnmount = a }
setComponentWillUnmount k spec = k (const $ pure unit) <#> const spec
