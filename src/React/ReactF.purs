module React.ReactF
  ( DisplayName()
  , Class()
  , Element()
  , Elements()
  , React(..)
  , ReactF(..)
  , Spec(..)
  , Specification(..)
  , RenderFn()
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

type LifecycleFn0 eff props state a = Reference props state -> Eff eff (Component props state a)

type LifecycleFn1 eff props state a = Reference props state -> Props props -> Eff eff (Component props state a)

type LifecycleFn2 eff props state a = Reference props state -> Props props -> State state -> Eff eff (Component props state a)

type ComponentWillMount eff props state = LifecycleFn0 eff props state Unit

type ComponentDidMount eff props state = LifecycleFn0 eff props state Unit

type ComponentWillReceiveProps eff props state = LifecycleFn1 eff props state Unit

type ShouldComponentUpdate eff props state = LifecycleFn2 eff props state Boolean

type ComponentWillUpdate eff props state = LifecycleFn2 eff props state Unit

type ComponentDidUpdate eff props state = LifecycleFn2 eff props state Unit

type ComponentWillUnmount eff props state = LifecycleFn0 eff props state Unit

type Spec eff props state
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

newtype Specification eff props state = Specification (Spec eff props state)

type React = FreeC ReactF

data ReactF a
  = CreateClass (forall eff props state. Specification eff props state) (forall props state. Class props state -> a)
  | CreateElementFromClass (forall props state. Class props state) (forall props. Props props) (forall eff props state. Events eff props state) Elements (Element -> a)
  | CreateElementFromTagName TagName Attributes (forall eff props state. Events eff props state) Elements (Element -> a)
  | RenderSync Element DOMElement (forall props state. Reference props state -> a)
  | RenderAsync Element DOMElement (forall props state. Reference props state -> a)

createClass :: forall eff props state. Specification eff props state -> React (Class props state)
createClass spec = liftFC $ CreateClass (unsafeSpec spec) unsafeClass

createElementFromClass :: forall eff props state. Class props state -> Props props -> Events eff props state -> Elements -> React Element
createElementFromClass cls props evts els = liftFC $ CreateElementFromClass (unsafeClass cls) (unsafeProps props) (unsafeEvents evts) els id

createElementFromTagName :: forall eff props state. TagName -> Attributes -> Events eff props state -> Elements -> React Element
createElementFromTagName name attrs evts els = liftFC $ CreateElementFromTagName name attrs (unsafeEvents evts) els id

renderSync :: forall props spec. Element -> DOMElement -> React (Reference props spec)
renderSync el dom = liftFC $ RenderSync el dom unsafeReference

renderAsync :: forall props spec. Element -> DOMElement -> React (Reference props spec)
renderAsync el dom = liftFC $ RenderAsync el dom unsafeReference

foreign import unsafeSpec "function unsafeSpec(spec){return spec;}" :: forall a b c d e f. Specification a b c -> Specification d e f

foreign import unsafeEvents "function unsafeEvents(evts){return evts;}" :: forall a b c d e f. Events a b c -> Events d e f

foreign import unsafeClass "function unsafeClass(cls){return cls;}" :: forall a b c d. Class a b -> Class c d

foreign import unsafeProps "function unsafeProps(props){return props;}" :: forall a b. Props a -> Props b

foreign import unsafeReference "function unsafeReference(ctx){return ctx;}" :: forall a b c d. Reference a b -> Reference c d
