module React.Events
  ( Events()
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

import React.ComponentF (Component())
import React.Types

type Events eff = Options (EventName eff)

foreign import data EventName :: # ! -> *

newtype SyntheticClipboardEvent
  = SyntheticClipboardEvent { bubbles :: Boolean
                            , cancelable :: Boolean
                            , currentTarget :: DOMEventTarget
                            , defaultPrevented :: Boolean
                            , eventPhase :: Number
                            , isTrusted :: Boolean
                            , nativeEvent :: DOMEvent
                            , preventDefault :: EffApplyFn0 Unit
                            , stopPropagation :: EffApplyFn0 Unit
                            , target :: DOMEventTarget
                            , timeStamp :: Number
                            , "type" :: String
                            , clipboardData :: DOMDataTransfer
                            }

newtype SyntheticKeyboardEvent
  = SyntheticKeyboardEvent { bubbles :: Boolean
                           , cancelable :: Boolean
                           , currentTarget :: DOMEventTarget
                           , defaultPrevented :: Boolean
                           , eventPhase :: Number
                           , isTrusted :: Boolean
                           , nativeEvent :: DOMEvent
                           , preventDefault :: EffApplyFn0 Unit
                           , stopPropagation :: EffApplyFn0 Unit
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

newtype SyntheticFocusEvent
  = SyntheticFocusEvent { bubbles :: Boolean
                        , cancelable :: Boolean
                        , currentTarget :: DOMEventTarget
                        , defaultPrevented :: Boolean
                        , eventPhase :: Number
                        , isTrusted :: Boolean
                        , nativeEvent :: DOMEvent
                        , preventDefault :: EffApplyFn0 Unit
                        , stopPropagation :: EffApplyFn0 Unit
                        , target :: DOMEventTarget
                        , timeStamp :: Number
                        , "type" :: String
                        , relatedTarget :: DOMEventTarget
                        }

newtype SyntheticInputEvent
  = SyntheticInputEvent { bubbles :: Boolean
                        , cancelable :: Boolean
                        , currentTarget :: DOMEventTarget
                        , defaultPrevented :: Boolean
                        , eventPhase :: Number
                        , isTrusted :: Boolean
                        , nativeEvent :: DOMEvent
                        , preventDefault :: EffApplyFn0 Unit
                        , stopPropagation :: EffApplyFn0 Unit
                        , target :: DOMEventTarget
                        , timeStamp :: Number
                        , "type" :: String
                        }

newtype SyntheticMouseEvent
  = SyntheticMouseEvent { bubbles :: Boolean
                        , cancelable :: Boolean
                        , currentTarget :: DOMEventTarget
                        , defaultPrevented :: Boolean
                        , eventPhase :: Number
                        , isTrusted :: Boolean
                        , nativeEvent :: DOMEvent
                        , preventDefault :: EffApplyFn0 Unit
                        , stopPropagation :: EffApplyFn0 Unit
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

newtype SyntheticTouchEvent
  = SyntheticTouchEvent { bubbles :: Boolean
                        , cancelable :: Boolean
                        , currentTarget :: DOMEventTarget
                        , defaultPrevented :: Boolean
                        , eventPhase :: Number
                        , isTrusted :: Boolean
                        , nativeEvent :: DOMEvent
                        , preventDefault :: EffApplyFn0 Unit
                        , stopPropagation :: EffApplyFn0 Unit
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

newtype SyntheticUIEvent
  = SyntheticUIEvent { bubbles :: Boolean
                     , cancelable :: Boolean
                     , currentTarget :: DOMEventTarget
                     , defaultPrevented :: Boolean
                     , eventPhase :: Number
                     , isTrusted :: Boolean
                     , nativeEvent :: DOMEvent
                     , preventDefault :: EffApplyFn0 Unit
                     , stopPropagation :: EffApplyFn0 Unit
                     , target :: DOMEventTarget
                     , timeStamp :: Number
                     , "type" :: String
                     , detail :: Number
                     , view :: DOMAbstractView
                     }

newtype SyntheticWheelEvent
  = SyntheticWheelEvent { bubbles :: Boolean
                        , cancelable :: Boolean
                        , currentTarget :: DOMEventTarget
                        , defaultPrevented :: Boolean
                        , eventPhase :: Number
                        , isTrusted :: Boolean
                        , nativeEvent :: DOMEvent
                        , preventDefault :: EffApplyFn0 Unit
                        , stopPropagation :: EffApplyFn0 Unit
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

newtype SyntheticClipboardEventFn eff = SyntheticClipboardEventFn (SyntheticClipboardEvent -> Component eff Unit)

newtype SyntheticCompositionEventFn eff = SyntheticCompositionEventFn (SyntheticCompositionEvent -> Component eff Unit)

newtype SyntheticDragEventFn eff = SyntheticDragEventFn (SyntheticDragEvent -> Component eff Unit)

newtype SyntheticKeyboardEventFn eff = SyntheticKeyboardEventFn (SyntheticKeyboardEvent -> Component eff Unit)

newtype SyntheticFocusEventFn eff = SyntheticFocusEventFn (SyntheticFocusEvent -> Component eff Unit)

newtype SyntheticInputEventFn eff = SyntheticInputEventFn (SyntheticInputEvent -> Component eff Unit)

newtype SyntheticMouseEventFn eff = SyntheticMouseEventFn (SyntheticMouseEvent -> Component eff Unit)

newtype SyntheticTouchEventFn eff = SyntheticTouchEventFn (SyntheticTouchEvent -> Component eff Unit)

newtype SyntheticUIEventFn eff = SyntheticUIEventFn (SyntheticUIEvent -> Component eff Unit)

newtype SyntheticWheelEventFn eff = SyntheticWheelEventFn (SyntheticWheelEvent -> Component eff Unit)

instance isOptionSyntheticClipboardEventFn :: IsOption (SyntheticClipboardEventFn eff) where
  (:=) k (SyntheticClipboardEventFn v) = (optionFn k) := v

instance isOptionSyntheticCompositionEventFn :: IsOption (SyntheticCompositionEventFn eff) where
  (:=) k (SyntheticCompositionEventFn v) = (optionFn k) := v

instance isOptionSyntheticDragEventFn :: IsOption (SyntheticDragEventFn eff) where
  (:=) k (SyntheticDragEventFn v) = (optionFn k) := v

instance isOptionSyntheticKeyboardEventFn :: IsOption (SyntheticKeyboardEventFn eff) where
  (:=) k (SyntheticKeyboardEventFn v) = (optionFn k) := v

instance isOptionSyntheticFocusEventFn :: IsOption (SyntheticFocusEventFn eff) where
  (:=) k (SyntheticFocusEventFn v) = (optionFn k) := v

instance isOptionSyntheticInputEventFn :: IsOption (SyntheticInputEventFn eff) where
  (:=) k (SyntheticInputEventFn v) = (optionFn k) := v

instance isOptionSyntheticMouseEventFn :: IsOption (SyntheticMouseEventFn eff) where
  (:=) k (SyntheticMouseEventFn v) = (optionFn k) := v

instance isOptionSyntheticTouchEventFn :: IsOption (SyntheticTouchEventFn eff) where
  (:=) k (SyntheticTouchEventFn v) = (optionFn k) := v

instance isOptionSyntheticUIEventFn :: IsOption (SyntheticUIEventFn eff) where
  (:=) k (SyntheticUIEventFn v) = (optionFn k) := v

instance isOptionSyntheticWheelEventFn :: IsOption (SyntheticWheelEventFn eff) where
  (:=) k (SyntheticWheelEventFn v) = (optionFn k) := v

instance effApplyFnsSyntheticClipboardEvent :: EffApplyFns SyntheticClipboardEvent where
  effApplyFn0 = runFn2 effApplyFn0Fn

instance effApplyFnsSyntheticCompositionEvent :: EffApplyFns SyntheticCompositionEvent where
  effApplyFn0 = runFn2 effApplyFn0Fn

instance effApplyFnsSyntheticDragEvent :: EffApplyFns SyntheticDragEvent where
  effApplyFn0 = runFn2 effApplyFn0Fn

instance effApplyFnsSyntheticKeyboardEvent :: EffApplyFns SyntheticKeyboardEvent where
  effApplyFn0 = runFn2 effApplyFn0Fn

instance effApplyFnsSyntheticFocusEvent :: EffApplyFns SyntheticFocusEvent where
  effApplyFn0 = runFn2 effApplyFn0Fn

instance effApplyFnsSyntheticInputEvent :: EffApplyFns SyntheticInputEvent where
  effApplyFn0 = runFn2 effApplyFn0Fn

instance effApplyFnsSyntheticMouseEvent :: EffApplyFns SyntheticMouseEvent where
  effApplyFn0 = runFn2 effApplyFn0Fn

instance effApplyFnsSyntheticTouchEvent :: EffApplyFns SyntheticTouchEvent where
  effApplyFn0 = runFn2 effApplyFn0Fn

instance effApplyFnsSyntheticUIEvent :: EffApplyFns SyntheticUIEvent where
  effApplyFn0 = runFn2 effApplyFn0Fn

instance effApplyFnsSyntheticWheelEvent :: EffApplyFns SyntheticWheelEvent where
  effApplyFn0 = runFn2 effApplyFn0Fn

foreign import onCopy "var onCopy = 'onCopy';" :: forall eff. Option (EventName eff) (SyntheticClipboardEventFn eff)

foreign import onCopyCapture "var onCopyCapture = 'onCopyCapture';" :: forall eff. Option (EventName eff) (SyntheticClipboardEventFn eff)

foreign import onCut "var onCut = 'onCut';" :: forall eff. Option (EventName eff) (SyntheticClipboardEventFn eff)

foreign import onCutCapture "var onCutCapture = 'onCutCapture';" :: forall eff. Option (EventName eff) (SyntheticClipboardEventFn eff)

foreign import onPaste "var onPaste = 'onPaste';" :: forall eff. Option (EventName eff) (SyntheticClipboardEventFn eff)

foreign import onPasteCapture "var onPasteCapture = 'onPasteCapture';" :: forall eff. Option (EventName eff) (SyntheticClipboardEventFn eff)

foreign import onFocus "var onFocus = 'onFocus';" :: forall eff. Option (EventName eff) (SyntheticFocusEventFn eff)

foreign import onFocusCapture "var onFocusCapture = 'onFocusCapture';" :: forall eff. Option (EventName eff) (SyntheticFocusEventFn eff)

foreign import onBlur "var onBlur = 'onBlur';" :: forall eff. Option (EventName eff) (SyntheticFocusEventFn eff)

foreign import onBlurCapture "var onBlurCapture = 'onBlurCapture';" :: forall eff. Option (EventName eff) (SyntheticFocusEventFn eff)

foreign import onChange "var onChange = 'onChange';" :: forall eff. Option (EventName eff) (SyntheticInputEventFn eff)

foreign import onChangeCapture "var onChangeCapture = 'onChangeCapture';" :: forall eff. Option (EventName eff) (SyntheticInputEventFn eff)

foreign import onInput "var onInput = 'onInput';" :: forall eff. Option (EventName eff) (SyntheticInputEventFn eff)

foreign import onInputCapture "var onInputCapture = 'onInputCapture';" :: forall eff. Option (EventName eff) (SyntheticInputEventFn eff)

foreign import onSubmit "var onSubmit = 'onSubmit';" :: forall eff. Option (EventName eff) (SyntheticInputEventFn eff)

foreign import onSubmitCapture "var onSubmitCapture = 'onSubmitCapture';" :: forall eff. Option (EventName eff) (SyntheticInputEventFn eff)

foreign import onKeyDown "var onKeyDown = 'onKeyDown';" :: forall eff. Option (EventName eff) (SyntheticKeyboardEventFn eff)

foreign import onKeyDownCapture "var onKeyDownCapture = 'onKeyDownCapture';" :: forall eff. Option (EventName eff) (SyntheticKeyboardEventFn eff)

foreign import onKeyPress "var onKeyPress = 'onKeyPress';" :: forall eff. Option (EventName eff) (SyntheticKeyboardEventFn eff)

foreign import onKeyPressCapture "var onKeyPressCapture = 'onKeyPressCapture';" :: forall eff. Option (EventName eff) (SyntheticKeyboardEventFn eff)

foreign import onKeyUp "var onKeyUp = 'onKeyUp';" :: forall eff. Option (EventName eff) (SyntheticKeyboardEventFn eff)

foreign import onKeyUpCapture "var onKeyUpCapture = 'onKeyUpCapture';" :: forall eff. Option (EventName eff) (SyntheticKeyboardEventFn eff)

foreign import onClick "var onClick = 'onClick';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onClickCapture "var onClickCapture = 'onClickCapture';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onDoubleClick "var onDoubleClick = 'onDoubleClick';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onDoubleClickCapture "var onDoubleClickCapture = 'onDoubleClickCapture';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onDrag "var onDrag = 'onDrag';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onDragCapture "var onDragCapture = 'onDragCapture';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onDragEnd "var onDragEnd = 'onDragEnd';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onDragEndCapture "var onDragEndCapture = 'onDragEndCapture';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onDragEnter "var onDragEnter = 'onDragEnter';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onDragEnterCapture "var onDragEnterCapture = 'onDragEnterCapture';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onDragExit "var onDragExit = 'onDragExit';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onDragExitCapture "var onDragExitCapture = 'onDragExitCapture';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onDragLeave "var onDragLeave = 'onDragLeave';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onDragLeaveCapture "var onDragLeaveCapture = 'onDragLeaveCapture';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onDragOver "var onDragOver = 'onDragOver';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onDragOverCapture "var onDragOverCapture = 'onDragOverCapture';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onDragStart "var onDragStart = 'onDragStart';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onDragStartCapture "var onDragStartCapture = 'onDragStartCapture';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onDrop "var onDrop = 'onDrop';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onDropCapture "var onDropCapture = 'onDropCapture';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onMouseDown "var onMouseDown = 'onMouseDown';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onMouseDownCapture "var onMouseDownCapture = 'onMouseDownCapture';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onMouseEnter "var onMouseEnter = 'onMouseEnter';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onMouseEnterCapture "var onMouseEnterCapture = 'onMouseEnterCapture';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onMouseLeave "var onMouseLeave = 'onMouseLeave';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onMouseLeaveCapture "var onMouseLeaveCapture = 'onMouseLeaveCapture';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onMouseMove "var onMouseMove = 'onMouseMove';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onMouseMoveCapture "var onMouseMoveCapture = 'onMouseMoveCapture';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onMouseOut "var onMouseOut = 'onMouseOut';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onMouseOutCapture "var onMouseOutCapture = 'onMouseOutCapture';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onMouseOver "var onMouseOver = 'onMouseOver';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onMouseOverCapture "var onMouseOverCapture = 'onMouseOverCapture';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onMouseUp "var onMouseUp = 'onMouseUp';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onMouseUpCapture "var onMouseUpCapture = 'onMouseUpCapture';" :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)

foreign import onTouchCancel "var onTouchCancel = 'onTouchCancel';" :: forall eff. Option (EventName eff) (SyntheticTouchEventFn eff)

foreign import onTouchCancelCapture "var onTouchCancelCapture = 'onTouchCancelCapture';" :: forall eff. Option (EventName eff) (SyntheticTouchEventFn eff)

foreign import onTouchEnd "var onTouchEnd = 'onTouchEnd';" :: forall eff. Option (EventName eff) (SyntheticTouchEventFn eff)

foreign import onTouchEndCapture "var onTouchEndCapture = 'onTouchEndCapture';" :: forall eff. Option (EventName eff) (SyntheticTouchEventFn eff)

foreign import onTouchMove "var onTouchMove = 'onTouchMove';" :: forall eff. Option (EventName eff) (SyntheticTouchEventFn eff)

foreign import onTouchMoveCapture "var onTouchMoveCapture = 'onTouchMoveCapture';" :: forall eff. Option (EventName eff) (SyntheticTouchEventFn eff)

foreign import onTouchStart "var onTouchStart = 'onTouchStart';" :: forall eff. Option (EventName eff) (SyntheticTouchEventFn eff)

foreign import onTouchStartCapture "var onTouchStartCapture = 'onTouchStartCapture';" :: forall eff. Option (EventName eff) (SyntheticTouchEventFn eff)

foreign import onScroll "var onScroll = 'onScroll';" :: forall eff. Option (EventName eff) (SyntheticUIEventFn eff)

foreign import onScrollCapture "var onScrollCapture = 'onScrollCapture';" :: forall eff. Option (EventName eff) (SyntheticUIEventFn eff)

foreign import onWheel "var onWheel = 'onWheel';" :: forall eff. Option (EventName eff) (SyntheticWheelEventFn eff)

foreign import onWheelCapture "var onWheelCapture = 'onWheelCapture';" :: forall eff. Option (EventName eff) (SyntheticWheelEventFn eff)
