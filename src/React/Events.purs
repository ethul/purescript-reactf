module React.Events
  ( Events(..)
  , EventName()
  , SyntheticClipboardEvent(..)
  , SyntheticCompositionEvent(..)
  , SyntheticDragEvent(..)
  , SyntheticKeyboardEvent(..)
  , SyntheticFocusEvent(..)
  , SyntheticInputEvent(..)
  , SyntheticMouseEvent(..)
  , SyntheticTouchEvent(..)
  , SyntheticUIEvent(..)
  , SyntheticWheelEvent(..)
  , SyntheticClipboardEventFn(..)
  , SyntheticCompositionEventFn(..)
  , SyntheticDragEventFn(..)
  , SyntheticKeyboardEventFn(..)
  , SyntheticFocusEventFn(..)
  , SyntheticInputEventFn(..)
  , SyntheticMouseEventFn(..)
  , SyntheticTouchEventFn(..)
  , SyntheticUIEventFn(..)
  , SyntheticWheelEventFn(..)
  , onCopy
  , onCopyCapture
  , onCut
  , onCutCapture
  , onPaste
  , onPasteCapture
  , onFocus
  , onFocusCapture
  , onBlur
  , onBlurCapture
  , onChange
  , onChangeCapture
  , onInput
  , onInputCapture
  , onSubmit
  , onSubmitCapture
  , onKeyDown
  , onKeyDownCapture
  , onKeyPress
  , onKeyPressCapture
  , onKeyUp
  , onKeyUpCapture
  , onClick
  , onClickCapture
  , onDoubleClick
  , onDoubleClickCapture
  , onDrag
  , onDragCapture
  , onDragEnd
  , onDragEndCapture
  , onDragEnter
  , onDragEnterCapture
  , onDragExit
  , onDragExitCapture
  , onDragLeave
  , onDragLeaveCapture
  , onDragOver
  , onDragOverCapture
  , onDragStart
  , onDragStartCapture
  , onDrop
  , onDropCapture
  , onMouseDown
  , onMouseDownCapture
  , onMouseEnter
  , onMouseEnterCapture
  , onMouseLeave
  , onMouseLeaveCapture
  , onMouseMove
  , onMouseMoveCapture
  , onMouseOut
  , onMouseOutCapture
  , onMouseOver
  , onMouseOverCapture
  , onMouseUp
  , onMouseUpCapture
  , onTouchCancel
  , onTouchCancelCapture
  , onTouchEnd
  , onTouchEndCapture
  , onTouchMove
  , onTouchMoveCapture
  , onTouchStart
  , onTouchStartCapture
  , onScroll
  , onScrollCapture
  , onWheel
  , onWheelCapture
  ) where

import Control.Monad.Eff (Eff())

import Data.Options
import Data.Function
import Data.Monoid (Monoid, mempty)

import DOM (DOM())

import React.ComponentF (Component())
import React.Types

newtype Events eff props state = Events (Options (EventName eff props state))

instance semigroupEvents :: Semigroup (Events eff props state) where
  (<>) (Events a) (Events b) = Events $ a <> b

instance monoidEvents :: Monoid (Events eff props state) where
  mempty = Events mempty

foreign import data EventName :: # ! -> * -> * -> *

newtype SyntheticClipboardEvent eff
  = SyntheticClipboardEvent { bubbles :: Boolean
                            , cancelable :: Boolean
                            , currentTarget :: DOMEventTarget
                            , defaultPrevented :: Boolean
                            , eventPhase :: Number
                            , isTrusted :: Boolean
                            , nativeEvent :: DOMEvent
                            , preventDefault :: Eff (dom :: DOM | eff) Unit
                            , stopPropagation :: Eff (dom :: DOM | eff) Unit
                            , target :: DOMEventTarget
                            , timeStamp :: Number
                            , "type" :: String
                            , clipboardData :: DOMDataTransfer
                            }

newtype SyntheticKeyboardEvent eff
  = SyntheticKeyboardEvent { bubbles :: Boolean
                           , cancelable :: Boolean
                           , currentTarget :: DOMEventTarget
                           , defaultPrevented :: Boolean
                           , eventPhase :: Number
                           , isTrusted :: Boolean
                           , nativeEvent :: DOMEvent
                           , preventDefault :: Eff (dom :: DOM | eff) Unit
                           , stopPropagation :: Eff (dom :: DOM | eff) Unit
                           , target :: DOMEventTarget
                           , timeStamp :: Number
                           , "type" :: String
                           , altKey :: Boolean
                           , charCode :: Number
                           , ctrlKey :: Boolean
                           , getModifierState :: String -> Boolean
                           , key :: String
                           , keyCode :: Number
                           , locale :: String
                           , location :: Number
                           , metaKey :: Boolean
                           , repeat :: Boolean
                           , shiftKey :: Boolean
                           , which :: Number
                           }

newtype SyntheticFocusEvent eff
  = SyntheticFocusEvent { bubbles :: Boolean
                        , cancelable :: Boolean
                        , currentTarget :: DOMEventTarget
                        , defaultPrevented :: Boolean
                        , eventPhase :: Number
                        , isTrusted :: Boolean
                        , nativeEvent :: DOMEvent
                        , preventDefault :: Eff (dom :: DOM | eff) Unit
                        , stopPropagation :: Eff (dom :: DOM | eff) Unit
                        , target :: DOMEventTarget
                        , timeStamp :: Number
                        , "type" :: String
                        , relatedTarget :: DOMEventTarget
                        }

newtype SyntheticInputEvent eff
  = SyntheticInputEvent { bubbles :: Boolean
                        , cancelable :: Boolean
                        , currentTarget :: DOMEventTarget
                        , defaultPrevented :: Boolean
                        , eventPhase :: Number
                        , isTrusted :: Boolean
                        , nativeEvent :: DOMEvent
                        , preventDefault :: Eff (dom :: DOM | eff) Unit
                        , stopPropagation :: Eff (dom :: DOM | eff) Unit
                        , target :: DOMEventTarget
                        , timeStamp :: Number
                        , "type" :: String
                        }

newtype SyntheticMouseEvent eff
  = SyntheticMouseEvent { bubbles :: Boolean
                        , cancelable :: Boolean
                        , currentTarget :: DOMEventTarget
                        , defaultPrevented :: Boolean
                        , eventPhase :: Number
                        , isTrusted :: Boolean
                        , nativeEvent :: DOMEvent
                        , preventDefault :: Eff (dom :: DOM | eff) Unit
                        , stopPropagation :: Eff (dom :: DOM | eff) Unit
                        , target :: DOMEventTarget
                        , timeStamp :: Number
                        , "type" :: String
                        , altKey :: Boolean
                        , button :: Number
                        , buttons :: Number
                        , clientX :: Number
                        , clientY :: Number
                        , ctrlKey :: Boolean
                        , getModifierState :: String -> Boolean
                        , metaKey :: Boolean
                        , pageX :: Number
                        , pageY :: Number
                        , relatedTarget :: DOMEventTarget
                        , screenX :: Number
                        , screenY :: Number
                        , shiftKey :: Boolean
                        }

newtype SyntheticTouchEvent eff
  = SyntheticTouchEvent { bubbles :: Boolean
                        , cancelable :: Boolean
                        , currentTarget :: DOMEventTarget
                        , defaultPrevented :: Boolean
                        , eventPhase :: Number
                        , isTrusted :: Boolean
                        , nativeEvent :: DOMEvent
                        , preventDefault :: Eff (dom :: DOM | eff) Unit
                        , stopPropagation :: Eff (dom :: DOM | eff) Unit
                        , target :: DOMEventTarget
                        , timeStamp :: Number
                        , "type" :: String
                        , altKey :: Boolean
                        , changedTouches :: DOMTouchList
                        , ctrlKey :: Boolean
                        , getModifierState :: String -> Boolean
                        , metaKey :: Boolean
                        , shiftKey :: Boolean
                        , targetTouches :: DOMTouchList
                        , touches :: DOMTouchList
                        }

newtype SyntheticUIEvent eff
  = SyntheticUIEvent { bubbles :: Boolean
                     , cancelable :: Boolean
                     , currentTarget :: DOMEventTarget
                     , defaultPrevented :: Boolean
                     , eventPhase :: Number
                     , isTrusted :: Boolean
                     , nativeEvent :: DOMEvent
                     , preventDefault :: Eff (dom :: DOM | eff) Unit
                     , stopPropagation :: Eff (dom :: DOM | eff) Unit
                     , target :: DOMEventTarget
                     , timeStamp :: Number
                     , "type" :: String
                     , detail :: Number
                     , view :: DOMAbstractView
                     }

newtype SyntheticWheelEvent eff
  = SyntheticWheelEvent { bubbles :: Boolean
                        , cancelable :: Boolean
                        , currentTarget :: DOMEventTarget
                        , defaultPrevented :: Boolean
                        , eventPhase :: Number
                        , isTrusted :: Boolean
                        , nativeEvent :: DOMEvent
                        , preventDefault :: Eff (dom :: DOM | eff) Unit
                        , stopPropagation :: Eff (dom :: DOM | eff) Unit
                        , target :: DOMEventTarget
                        , timeStamp :: Number
                        , "type" :: String
                        , detail :: Number
                        , deltaMode :: Number
                        , deltaX :: Number
                        , deltaY :: Number
                        , deltaZ :: Number
                        }

data SyntheticCompositionEvent

data SyntheticDragEvent

newtype SyntheticClipboardEventFn eff props state = SyntheticClipboardEventFn (SyntheticClipboardEvent eff -> Eff eff (Component props state Unit))

newtype SyntheticCompositionEventFn eff props state = SyntheticCompositionEventFn (SyntheticCompositionEvent -> Eff eff (Component props state Unit))

newtype SyntheticDragEventFn eff props state = SyntheticDragEventFn (SyntheticDragEvent -> Eff eff (Component props state Unit))

newtype SyntheticKeyboardEventFn eff props state = SyntheticKeyboardEventFn (SyntheticKeyboardEvent eff -> Eff eff (Component props state Unit))

newtype SyntheticFocusEventFn eff props state = SyntheticFocusEventFn (SyntheticFocusEvent eff -> Eff eff (Component props state Unit))

newtype SyntheticInputEventFn eff props state = SyntheticInputEventFn (SyntheticInputEvent eff -> Eff eff (Component props state Unit))

newtype SyntheticMouseEventFn eff props state = SyntheticMouseEventFn (SyntheticMouseEvent eff -> Eff eff (Component props state Unit))

newtype SyntheticTouchEventFn eff props state = SyntheticTouchEventFn (SyntheticTouchEvent eff -> Eff eff (Component props state Unit))

newtype SyntheticUIEventFn eff props state = SyntheticUIEventFn (SyntheticUIEvent eff -> Eff eff (Component props state Unit))

newtype SyntheticWheelEventFn eff props state = SyntheticWheelEventFn (SyntheticWheelEvent eff -> Eff eff (Component props state Unit))

instance isOptionSyntheticClipboardEventFn :: IsOption (SyntheticClipboardEventFn eff props state) where
  (:=) k (SyntheticClipboardEventFn v) = runFn2 eventFnOption k v

instance isOptionSyntheticCompositionEventFn :: IsOption (SyntheticCompositionEventFn eff props state) where
  (:=) k (SyntheticCompositionEventFn v) = runFn2 eventFnOption k v

instance isOptionSyntheticDragEventFn :: IsOption (SyntheticDragEventFn eff props state) where
  (:=) k (SyntheticDragEventFn v) = runFn2 eventFnOption k v

instance isOptionSyntheticKeyboardEventFn :: IsOption (SyntheticKeyboardEventFn eff props state) where
  (:=) k (SyntheticKeyboardEventFn v) = runFn2 eventFnOption k v

instance isOptionSyntheticFocusEventFn :: IsOption (SyntheticFocusEventFn eff props state) where
  (:=) k (SyntheticFocusEventFn v) = runFn2 eventFnOption k v

instance isOptionSyntheticInputEventFn :: IsOption (SyntheticInputEventFn eff props state) where
  (:=) k (SyntheticInputEventFn v) = runFn2 eventFnOption k v

instance isOptionSyntheticMouseEventFn :: IsOption (SyntheticMouseEventFn eff props state) where
  (:=) k (SyntheticMouseEventFn v) = runFn2 eventFnOption k v

instance isOptionSyntheticTouchEventFn :: IsOption (SyntheticTouchEventFn eff props state) where
  (:=) k (SyntheticTouchEventFn v) = runFn2 eventFnOption k v

instance isOptionSyntheticUIEventFn :: IsOption (SyntheticUIEventFn eff props state) where
  (:=) k (SyntheticUIEventFn v) = runFn2 eventFnOption k v

instance isOptionSyntheticWheelEventFn :: IsOption (SyntheticWheelEventFn eff props state) where
  (:=) k (SyntheticWheelEventFn v) = runFn2 eventFnOption k v

foreign import eventFnOption "function eventFnOption(k, v){return [[k, v]];}" :: forall a b c. Fn2 a b (Options c)

foreign import onCopy "var onCopy = 'onCopy';" :: forall eff props state. Option (EventName eff props state) (SyntheticClipboardEventFn eff props state)

foreign import onCopyCapture "var onCopyCapture = 'onCopyCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticClipboardEventFn eff props state)

foreign import onCut "var onCut = 'onCut';" :: forall eff props state. Option (EventName eff props state) (SyntheticClipboardEventFn eff props state)

foreign import onCutCapture "var onCutCapture = 'onCutCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticClipboardEventFn eff props state)

foreign import onPaste "var onPaste = 'onPaste';" :: forall eff props state. Option (EventName eff props state) (SyntheticClipboardEventFn eff props state)

foreign import onPasteCapture "var onPasteCapture = 'onPasteCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticClipboardEventFn eff props state)

foreign import onFocus "var onFocus = 'onFocus';" :: forall eff props state. Option (EventName eff props state) (SyntheticFocusEventFn eff props state)

foreign import onFocusCapture "var onFocusCapture = 'onFocusCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticFocusEventFn eff props state)

foreign import onBlur "var onBlur = 'onBlur';" :: forall eff props state. Option (EventName eff props state) (SyntheticFocusEventFn eff props state)

foreign import onBlurCapture "var onBlurCapture = 'onBlurCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticFocusEventFn eff props state)

foreign import onChange "var onChange = 'onChange';" :: forall eff props state. Option (EventName eff props state) (SyntheticInputEventFn eff props state)

foreign import onChangeCapture "var onChangeCapture = 'onChangeCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticInputEventFn eff props state)

foreign import onInput "var onInput = 'onInput';" :: forall eff props state. Option (EventName eff props state) (SyntheticInputEventFn eff props state)

foreign import onInputCapture "var onInputCapture = 'onInputCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticInputEventFn eff props state)

foreign import onSubmit "var onSubmit = 'onSubmit';" :: forall eff props state. Option (EventName eff props state) (SyntheticInputEventFn eff props state)

foreign import onSubmitCapture "var onSubmitCapture = 'onSubmitCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticInputEventFn eff props state)

foreign import onKeyDown "var onKeyDown = 'onKeyDown';" :: forall eff props state. Option (EventName eff props state) (SyntheticKeyboardEventFn eff props state)

foreign import onKeyDownCapture "var onKeyDownCapture = 'onKeyDownCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticKeyboardEventFn eff props state)

foreign import onKeyPress "var onKeyPress = 'onKeyPress';" :: forall eff props state. Option (EventName eff props state) (SyntheticKeyboardEventFn eff props state)

foreign import onKeyPressCapture "var onKeyPressCapture = 'onKeyPressCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticKeyboardEventFn eff props state)

foreign import onKeyUp "var onKeyUp = 'onKeyUp';" :: forall eff props state. Option (EventName eff props state) (SyntheticKeyboardEventFn eff props state)

foreign import onKeyUpCapture "var onKeyUpCapture = 'onKeyUpCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticKeyboardEventFn eff props state)

foreign import onClick "var onClick = 'onClick';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onClickCapture "var onClickCapture = 'onClickCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onDoubleClick "var onDoubleClick = 'onDoubleClick';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onDoubleClickCapture "var onDoubleClickCapture = 'onDoubleClickCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onDrag "var onDrag = 'onDrag';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onDragCapture "var onDragCapture = 'onDragCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onDragEnd "var onDragEnd = 'onDragEnd';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onDragEndCapture "var onDragEndCapture = 'onDragEndCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onDragEnter "var onDragEnter = 'onDragEnter';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onDragEnterCapture "var onDragEnterCapture = 'onDragEnterCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onDragExit "var onDragExit = 'onDragExit';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onDragExitCapture "var onDragExitCapture = 'onDragExitCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onDragLeave "var onDragLeave = 'onDragLeave';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onDragLeaveCapture "var onDragLeaveCapture = 'onDragLeaveCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onDragOver "var onDragOver = 'onDragOver';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onDragOverCapture "var onDragOverCapture = 'onDragOverCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onDragStart "var onDragStart = 'onDragStart';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onDragStartCapture "var onDragStartCapture = 'onDragStartCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onDrop "var onDrop = 'onDrop';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onDropCapture "var onDropCapture = 'onDropCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onMouseDown "var onMouseDown = 'onMouseDown';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onMouseDownCapture "var onMouseDownCapture = 'onMouseDownCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onMouseEnter "var onMouseEnter = 'onMouseEnter';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onMouseEnterCapture "var onMouseEnterCapture = 'onMouseEnterCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onMouseLeave "var onMouseLeave = 'onMouseLeave';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onMouseLeaveCapture "var onMouseLeaveCapture = 'onMouseLeaveCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onMouseMove "var onMouseMove = 'onMouseMove';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onMouseMoveCapture "var onMouseMoveCapture = 'onMouseMoveCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onMouseOut "var onMouseOut = 'onMouseOut';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onMouseOutCapture "var onMouseOutCapture = 'onMouseOutCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onMouseOver "var onMouseOver = 'onMouseOver';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onMouseOverCapture "var onMouseOverCapture = 'onMouseOverCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onMouseUp "var onMouseUp = 'onMouseUp';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onMouseUpCapture "var onMouseUpCapture = 'onMouseUpCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

foreign import onTouchCancel "var onTouchCancel = 'onTouchCancel';" :: forall eff props state. Option (EventName eff props state) (SyntheticTouchEventFn eff props state)

foreign import onTouchCancelCapture "var onTouchCancelCapture = 'onTouchCancelCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticTouchEventFn eff props state)

foreign import onTouchEnd "var onTouchEnd = 'onTouchEnd';" :: forall eff props state. Option (EventName eff props state) (SyntheticTouchEventFn eff props state)

foreign import onTouchEndCapture "var onTouchEndCapture = 'onTouchEndCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticTouchEventFn eff props state)

foreign import onTouchMove "var onTouchMove = 'onTouchMove';" :: forall eff props state. Option (EventName eff props state) (SyntheticTouchEventFn eff props state)

foreign import onTouchMoveCapture "var onTouchMoveCapture = 'onTouchMoveCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticTouchEventFn eff props state)

foreign import onTouchStart "var onTouchStart = 'onTouchStart';" :: forall eff props state. Option (EventName eff props state) (SyntheticTouchEventFn eff props state)

foreign import onTouchStartCapture "var onTouchStartCapture = 'onTouchStartCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticTouchEventFn eff props state)

foreign import onScroll "var onScroll = 'onScroll';" :: forall eff props state. Option (EventName eff props state) (SyntheticUIEventFn eff props state)

foreign import onScrollCapture "var onScrollCapture = 'onScrollCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticUIEventFn eff props state)

foreign import onWheel "var onWheel = 'onWheel';" :: forall eff props state. Option (EventName eff props state) (SyntheticWheelEventFn eff props state)

foreign import onWheelCapture "var onWheelCapture = 'onWheelCapture';" :: forall eff props state. Option (EventName eff props state) (SyntheticWheelEventFn eff props state)
