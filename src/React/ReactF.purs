module React.ReactF
  ( DisplayName()
  , Class()
  , Element()
  , Elements()
  , React(..)
  , ReactF(..)
  , PureSpec(..)
  , ImpureSpec(..)
  , Specification(..)
  , RenderFn()
  , PureRenderFn()
  , LifecycleFn0()
  , LifecycleFn1()
  , LifecycleFn2()
  , ComponentWillMount()
  , ComponentDidMount()
  , ComponentWillReceiveProps()
  , ShouldComponentUpdate()
  , ComponentWillUpdate()
  , ComponentDidUpdate()
  , ComponentWillUnmount()
  , createClass
  , createElementFromClass
  , createElementFromTagName
  , renderSync
  , renderAsync
  ) where

import Control.Monad.Eff (Eff())
import Control.Monad.Free (FreeC(), liftFC)

import React.Attributes (Attributes())
import React.ComponentF (Component(), Reference(), Props(), State())
import React.Events (Events())
import React.TagName (TagName())
import React.Types (DOMElement())

type DisplayName = String

data Class props state

data Element

type Elements = [Element]

type RenderFn props state = Reference props state -> Props props -> State state -> React Element

type PureRenderFn props = Props props -> React Element

type LifecycleFn0 eff props state a = Reference props state -> Component eff a

type LifecycleFn1 eff props state a = Reference props state -> Props props -> Component eff a

type LifecycleFn2 eff props state a = Reference props state -> Props props -> State state -> Component eff a

type ComponentWillMount eff props state = LifecycleFn0 eff props state Unit

type ComponentDidMount eff props state = LifecycleFn0 eff props state Unit

type ComponentWillReceiveProps eff props state = LifecycleFn1 eff props state Unit

type ShouldComponentUpdate eff props state = LifecycleFn2 eff props state Boolean

type ComponentWillUpdate eff props state = LifecycleFn2 eff props state Unit

type ComponentDidUpdate eff props state = LifecycleFn2 eff props state Unit

type ComponentWillUnmount eff props state = LifecycleFn0 eff props state Unit

type PureSpec props
  = { render :: PureRenderFn props
    , getDefaultProps :: Props props
    , displayName :: DisplayName
    }

type ImpureSpec eff props state
  = { render :: RenderFn props state
    , getInitialState :: State state
    , getDefaultProps :: Props props
    --, propTypes
    --, mixins
    --, statics
    , displayName :: DisplayName
    , componentWillMount :: ComponentWillMount eff props state
    , componentDidMount :: ComponentDidMount eff props state
    , componentWillReceiveProps :: ComponentWillReceiveProps eff props state
    , shouldComponentUpdate :: ShouldComponentUpdate eff props state
    , componentWillUpdate :: ComponentWillUpdate eff props state
    , componentDidUpdate :: ComponentDidUpdate eff props state
    , componentWillUnmount :: ComponentWillUnmount eff props state
    }

data Specification eff props state
  = PureSpecification (PureSpec props)
  | ImpureSpecification (ImpureSpec eff props state)

type React = FreeC ReactF

data ReactF a
  = CreateClass (forall eff props state. Specification eff props state) (forall props state. Class props state -> a)
  | CreateElementFromClass (forall props state. Class props state) (forall props. Props props) (forall eff. Events eff) Elements (Element -> a)
  | CreateElementFromTagName TagName Attributes (forall eff. Events eff) Elements (Element -> a)
  | RenderSync Element DOMElement (forall props state. Reference props state -> a)
  | RenderAsync Element DOMElement (forall props state. Reference props state -> a)

createClass :: forall eff props state. Specification eff props state -> React (Class props state)
createClass spec = liftFC $ CreateClass (coerce spec) coerce

createElementFromClass :: forall eff props state. Class props state -> Props props -> Events eff -> Elements -> React Element
createElementFromClass cls props evts els = liftFC $ CreateElementFromClass (coerce cls) (coerce props) (coerce evts) els id

createElementFromTagName :: forall eff props state. TagName -> Attributes -> Events eff -> Elements -> React Element
createElementFromTagName name attrs evts els = liftFC $ CreateElementFromTagName name attrs (coerce evts) els id

renderSync :: forall props spec. Element -> DOMElement -> React (Reference props spec)
renderSync el dom = liftFC $ RenderSync el dom coerce

renderAsync :: forall props spec. Element -> DOMElement -> React (Reference props spec)
renderAsync el dom = liftFC $ RenderAsync el dom coerce

foreign import coerce "function coerce(a){return a;}" :: forall a b. a -> b
