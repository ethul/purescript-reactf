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

foreign import mkEvent "function mkEvent(name){ return name; }" :: forall eff eventFn. String -> Option (EventName eff) (eventFn eff)

onCopy :: forall eff. Option (EventName eff) (SyntheticClipboardEventFn eff)
onCopy = mkEvent "onCopy"

onCopyCapture :: forall eff. Option (EventName eff) (SyntheticClipboardEventFn eff)
onCopyCapture = mkEvent "onCopyCapture"

onCut :: forall eff. Option (EventName eff) (SyntheticClipboardEventFn eff)
onCut = mkEvent "onCut"

onCutCapture :: forall eff. Option (EventName eff) (SyntheticClipboardEventFn eff)
onCutCapture = mkEvent "onCutCapture"

onPaste :: forall eff. Option (EventName eff) (SyntheticClipboardEventFn eff)
onPaste = mkEvent "onPaste"

onPasteCapture :: forall eff. Option (EventName eff) (SyntheticClipboardEventFn eff)
onPasteCapture = mkEvent "onPasteCapture"

onFocus :: forall eff. Option (EventName eff) (SyntheticFocusEventFn eff)
onFocus = mkEvent "onFocus"

onFocusCapture :: forall eff. Option (EventName eff) (SyntheticFocusEventFn eff)
onFocusCapture = mkEvent "onFocusCapture"

onBlur :: forall eff. Option (EventName eff) (SyntheticFocusEventFn eff)
onBlur = mkEvent "onBlur"

onBlurCapture :: forall eff. Option (EventName eff) (SyntheticFocusEventFn eff)
onBlurCapture = mkEvent "onBlurCapture"

onChange :: forall eff. Option (EventName eff) (SyntheticInputEventFn eff)
onChange = mkEvent "onChange"

onChangeCapture :: forall eff. Option (EventName eff) (SyntheticInputEventFn eff)
onChangeCapture = mkEvent "onChangeCapture"

onInput :: forall eff. Option (EventName eff) (SyntheticInputEventFn eff)
onInput = mkEvent "onInput"

onInputCapture :: forall eff. Option (EventName eff) (SyntheticInputEventFn eff)
onInputCapture = mkEvent "onInputCapture"

onSubmit :: forall eff. Option (EventName eff) (SyntheticInputEventFn eff)
onSubmit = mkEvent "onSubmit"

onSubmitCapture :: forall eff. Option (EventName eff) (SyntheticInputEventFn eff)
onSubmitCapture = mkEvent "onSubmitCapture"

onKeyDown :: forall eff. Option (EventName eff) (SyntheticKeyboardEventFn eff)
onKeyDown = mkEvent "onKeyDown"

onKeyDownCapture :: forall eff. Option (EventName eff) (SyntheticKeyboardEventFn eff)
onKeyDownCapture = mkEvent "onKeyDownCapture"

onKeyPress :: forall eff. Option (EventName eff) (SyntheticKeyboardEventFn eff)
onKeyPress = mkEvent "onKeyPress"

onKeyPressCapture :: forall eff. Option (EventName eff) (SyntheticKeyboardEventFn eff)
onKeyPressCapture = mkEvent "onKeyPressCapture"

onKeyUp :: forall eff. Option (EventName eff) (SyntheticKeyboardEventFn eff)
onKeyUp = mkEvent "onKeyUp"

onKeyUpCapture :: forall eff. Option (EventName eff) (SyntheticKeyboardEventFn eff)
onKeyUpCapture = mkEvent "onKeyUpCapture"

onClick :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onClick = mkEvent "onClick"

onClickCapture :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onClickCapture = mkEvent "onClickCapture"

onDoubleClick :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onDoubleClick = mkEvent "onDoubleClick"

onDoubleClickCapture :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onDoubleClickCapture = mkEvent "onDoubleClickCapture"

onDrag :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onDrag = mkEvent "onDrag"

onDragCapture :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onDragCapture = mkEvent "onDragCapture"

onDragEnd :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onDragEnd = mkEvent "onDragEnd"

onDragEndCapture :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onDragEndCapture = mkEvent "onDragEndCapture"

onDragEnter :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onDragEnter = mkEvent "onDragEnter"

onDragEnterCapture :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onDragEnterCapture = mkEvent "onDragEnterCapture"

onDragExit :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onDragExit = mkEvent "onDragExit"

onDragExitCapture :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onDragExitCapture = mkEvent "onDragExitCapture"

onDragLeave :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onDragLeave = mkEvent "onDragLeave"

onDragLeaveCapture :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onDragLeaveCapture = mkEvent "onDragLeaveCapture"

onDragOver :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onDragOver = mkEvent "onDragOver"

onDragOverCapture :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onDragOverCapture = mkEvent "onDragOverCapture"

onDragStart :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onDragStart = mkEvent "onDragStart"

onDragStartCapture :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onDragStartCapture = mkEvent "onDragStartCapture"

onDrop :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onDrop = mkEvent "onDrop"

onDropCapture :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onDropCapture = mkEvent "onDropCapture"

onMouseDown :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onMouseDown = mkEvent "onMouseDown"

onMouseDownCapture :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onMouseDownCapture = mkEvent "onMouseDownCapture"

onMouseEnter :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onMouseEnter = mkEvent "onMouseEnter"

onMouseEnterCapture :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onMouseEnterCapture = mkEvent "onMouseEnterCapture"

onMouseLeave :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onMouseLeave = mkEvent "onMouseLeave"

onMouseLeaveCapture :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onMouseLeaveCapture = mkEvent "onMouseLeaveCapture"

onMouseMove :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onMouseMove = mkEvent "onMouseMove"

onMouseMoveCapture :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onMouseMoveCapture = mkEvent "onMouseMoveCapture"

onMouseOut :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onMouseOut = mkEvent "onMouseOut"

onMouseOutCapture :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onMouseOutCapture = mkEvent "onMouseOutCapture"

onMouseOver :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onMouseOver = mkEvent "onMouseOver"

onMouseOverCapture :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onMouseOverCapture = mkEvent "onMouseOverCapture"

onMouseUp :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onMouseUp = mkEvent "onMouseUp"

onMouseUpCapture :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
onMouseUpCapture = mkEvent "onMouseUpCapture"

onTouchCancel :: forall eff. Option (EventName eff) (SyntheticTouchEventFn eff)
onTouchCancel = mkEvent "onTouchCancel"

onTouchCancelCapture :: forall eff. Option (EventName eff) (SyntheticTouchEventFn eff)
onTouchCancelCapture = mkEvent "onTouchCancelCapture"

onTouchEnd :: forall eff. Option (EventName eff) (SyntheticTouchEventFn eff)
onTouchEnd = mkEvent "onTouchEnd"

onTouchEndCapture :: forall eff. Option (EventName eff) (SyntheticTouchEventFn eff)
onTouchEndCapture = mkEvent "onTouchEndCapture"

onTouchMove :: forall eff. Option (EventName eff) (SyntheticTouchEventFn eff)
onTouchMove = mkEvent "onTouchMove"

onTouchMoveCapture :: forall eff. Option (EventName eff) (SyntheticTouchEventFn eff)
onTouchMoveCapture = mkEvent "onTouchMoveCapture"

onTouchStart :: forall eff. Option (EventName eff) (SyntheticTouchEventFn eff)
onTouchStart = mkEvent "onTouchStart"

onTouchStartCapture :: forall eff. Option (EventName eff) (SyntheticTouchEventFn eff)
onTouchStartCapture = mkEvent "onTouchStartCapture"

onScroll :: forall eff. Option (EventName eff) (SyntheticUIEventFn eff)
onScroll = mkEvent "onScroll"

onScrollCapture :: forall eff. Option (EventName eff) (SyntheticUIEventFn eff)
onScrollCapture = mkEvent "onScrollCapture"

onWheel :: forall eff. Option (EventName eff) (SyntheticWheelEventFn eff)
onWheel = mkEvent "onWheel"

onWheelCapture :: forall eff. Option (EventName eff) (SyntheticWheelEventFn eff)
onWheelCapture = mkEvent "onWheelCapture"
