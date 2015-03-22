module React.Events
  ( SyntheticEventRecord(..)
  , SyntheticEvent(..)
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
  , SyntheticEventFn(..)
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
  , onError
  , onErrorCapture
  , onLoad
  , onLoadCapture
  , onInput
  , onInputCapture
  , onReset
  , onResetCapture
  , onSubmit
  , onSubmitCapture
  , onCopy
  , onCopyCapture
  , onCut
  , onCutCapture
  , onPaste
  , onPasteCapture
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
  , onFocus
  , onFocusCapture
  , onBlur
  , onBlurCapture
  , onChange
  , onChangeCapture
  , onKeyDown
  , onKeyDownCapture
  , onKeyPress
  , onKeyPressCapture
  , onKeyUp
  , onKeyUpCapture
  , onClick
  , onClickCapture
  , onContextMenu
  , onContextMenuCapture
  , onDoubleClick
  , onDoubleClickCapture
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

import React.Attributes (Attribute())
import React.ComponentF (Component())
import React.Types

type SyntheticEventRecord event
  = { bubbles :: Boolean
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
    | event
    }

newtype SyntheticEvent
  = SyntheticEvent (SyntheticEventRecord ())

newtype SyntheticClipboardEvent
  = SyntheticClipboardEvent (SyntheticEventRecord (clipboardData :: DOMDataTransfer))

newtype SyntheticCompositionEvent
  = SyntheticCompositionEvent (SyntheticEventRecord ("data" :: DOMString))

newtype SyntheticDragEvent
  = SyntheticDragEvent (SyntheticEventRecord (dataTransfer :: DOMDataTransfer))

newtype SyntheticKeyboardEvent
  = SyntheticKeyboardEvent (SyntheticEventRecord ( altKey :: Boolean
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
                                                 ))

newtype SyntheticFocusEvent
  = SyntheticFocusEvent (SyntheticEventRecord (relatedTarget :: DOMEventTarget))

newtype SyntheticInputEvent
  = SyntheticInputEvent (SyntheticEventRecord ())

newtype SyntheticMouseEvent
  = SyntheticMouseEvent (SyntheticEventRecord ( altKey :: Boolean
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
                                              ))

newtype SyntheticTouchEvent
  = SyntheticTouchEvent (SyntheticEventRecord ( altKey :: Boolean
                                              , changedTouches :: DOMTouchList
                                              , ctrlKey :: Boolean
                                              , getModifierState :: String -> Boolean
                                              , metaKey :: Boolean
                                              , shiftKey :: Boolean
                                              , targetTouches :: DOMTouchList
                                              , touches :: DOMTouchList
                                              ))

newtype SyntheticUIEvent
  = SyntheticUIEvent (SyntheticEventRecord ( detail :: Number
                                           , view :: DOMAbstractView
                                           ))

newtype SyntheticWheelEvent
  = SyntheticWheelEvent (SyntheticEventRecord ( detail :: Number
                                              , deltaMode :: Number
                                              , deltaX :: Number
                                              , deltaY :: Number
                                              , deltaZ :: Number
                                              ))

newtype SyntheticEventFn eff = SyntheticEventFn (SyntheticEvent -> Component eff Unit)

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

instance isOptionSyntheticEventFn :: IsOption (SyntheticEventFn eff) where
  (:=) k (SyntheticEventFn v) = (optionFn k) := v

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

instance effApplyFnsSyntheticEvent :: EffApplyFns SyntheticEvent where
  effApplyFn0 = runFn2 effApplyFn0Fn

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

onError :: forall eff. Option Attribute (SyntheticEventFn eff)
onError = opt "onError"

onErrorCapture :: forall eff. Option Attribute (SyntheticEventFn eff)
onErrorCapture = opt "onErrorCapture"

onInput :: forall eff. Option Attribute (SyntheticEventFn eff)
onInput = opt "onInput"

onInputCapture :: forall eff. Option Attribute (SyntheticEventFn eff)
onInputCapture = opt "onInputCapture"

onLoad :: forall eff. Option Attribute (SyntheticEventFn eff)
onLoad = opt "onLoad"

onLoadCapture :: forall eff. Option Attribute (SyntheticEventFn eff)
onLoadCapture = opt "onLoadCapture"

onReset :: forall eff. Option Attribute (SyntheticEventFn eff)
onReset = opt "onReset"

onResetCapture :: forall eff. Option Attribute (SyntheticEventFn eff)
onResetCapture = opt "onResetCapture"

onSubmit :: forall eff. Option Attribute (SyntheticEventFn eff)
onSubmit = opt "onSubmit"

onSubmitCapture :: forall eff. Option Attribute (SyntheticEventFn eff)
onSubmitCapture = opt "onSubmitCapture"

onCopy :: forall eff. Option Attribute (SyntheticClipboardEventFn eff)
onCopy = opt "onCopy"

onCopyCapture :: forall eff. Option Attribute (SyntheticClipboardEventFn eff)
onCopyCapture = opt "onCopyCapture"

onCut :: forall eff. Option Attribute (SyntheticClipboardEventFn eff)
onCut = opt "onCut"

onCutCapture :: forall eff. Option Attribute (SyntheticClipboardEventFn eff)
onCutCapture = opt "onCutCapture"

onPaste :: forall eff. Option Attribute (SyntheticClipboardEventFn eff)
onPaste = opt "onPaste"

onPasteCapture :: forall eff. Option Attribute (SyntheticClipboardEventFn eff)
onPasteCapture = opt "onPasteCapture"

onDrag :: forall eff. Option Attribute (SyntheticDragEventFn eff)
onDrag = opt "onDrag"

onDragCapture :: forall eff. Option Attribute (SyntheticDragEventFn eff)
onDragCapture = opt "onDragCapture"

onDragEnd :: forall eff. Option Attribute (SyntheticDragEventFn eff)
onDragEnd = opt "onDragEnd"

onDragEndCapture :: forall eff. Option Attribute (SyntheticDragEventFn eff)
onDragEndCapture = opt "onDragEndCapture"

onDragEnter :: forall eff. Option Attribute (SyntheticDragEventFn eff)
onDragEnter = opt "onDragEnter"

onDragEnterCapture :: forall eff. Option Attribute (SyntheticDragEventFn eff)
onDragEnterCapture = opt "onDragEnterCapture"

onDragExit :: forall eff. Option Attribute (SyntheticDragEventFn eff)
onDragExit = opt "onDragExit"

onDragExitCapture :: forall eff. Option Attribute (SyntheticDragEventFn eff)
onDragExitCapture = opt "onDragExitCapture"

onDragLeave :: forall eff. Option Attribute (SyntheticDragEventFn eff)
onDragLeave = opt "onDragLeave"

onDragLeaveCapture :: forall eff. Option Attribute (SyntheticDragEventFn eff)
onDragLeaveCapture = opt "onDragLeaveCapture"

onDragOver :: forall eff. Option Attribute (SyntheticDragEventFn eff)
onDragOver = opt "onDragOver"

onDragOverCapture :: forall eff. Option Attribute (SyntheticDragEventFn eff)
onDragOverCapture = opt "onDragOverCapture"

onDragStart :: forall eff. Option Attribute (SyntheticDragEventFn eff)
onDragStart = opt "onDragStart"

onDragStartCapture :: forall eff. Option Attribute (SyntheticDragEventFn eff)
onDragStartCapture = opt "onDragStartCapture"

onDrop :: forall eff. Option Attribute (SyntheticDragEventFn eff)
onDrop = opt "onDrop"

onDropCapture :: forall eff. Option Attribute (SyntheticDragEventFn eff)
onDropCapture = opt "onDropCapture"

onFocus :: forall eff. Option Attribute (SyntheticFocusEventFn eff)
onFocus = opt "onFocus"

onFocusCapture :: forall eff. Option Attribute (SyntheticFocusEventFn eff)
onFocusCapture = opt "onFocusCapture"

onBlur :: forall eff. Option Attribute (SyntheticFocusEventFn eff)
onBlur = opt "onBlur"

onBlurCapture :: forall eff. Option Attribute (SyntheticFocusEventFn eff)
onBlurCapture = opt "onBlurCapture"

onChange :: forall eff. Option Attribute (SyntheticInputEventFn eff)
onChange = opt "onChange"

onChangeCapture :: forall eff. Option Attribute (SyntheticInputEventFn eff)
onChangeCapture = opt "onChangeCapture"

onKeyDown :: forall eff. Option Attribute (SyntheticKeyboardEventFn eff)
onKeyDown = opt "onKeyDown"

onKeyDownCapture :: forall eff. Option Attribute (SyntheticKeyboardEventFn eff)
onKeyDownCapture = opt "onKeyDownCapture"

onKeyPress :: forall eff. Option Attribute (SyntheticKeyboardEventFn eff)
onKeyPress = opt "onKeyPress"

onKeyPressCapture :: forall eff. Option Attribute (SyntheticKeyboardEventFn eff)
onKeyPressCapture = opt "onKeyPressCapture"

onKeyUp :: forall eff. Option Attribute (SyntheticKeyboardEventFn eff)
onKeyUp = opt "onKeyUp"

onKeyUpCapture :: forall eff. Option Attribute (SyntheticKeyboardEventFn eff)
onKeyUpCapture = opt "onKeyUpCapture"

onClick :: forall eff. Option Attribute (SyntheticMouseEventFn eff)
onClick = opt "onClick"

onClickCapture :: forall eff. Option Attribute (SyntheticMouseEventFn eff)
onClickCapture = opt "onClickCapture"

onContextMenu :: forall eff. Option Attribute (SyntheticMouseEventFn eff)
onContextMenu = opt "onContextMenu"

onContextMenuCapture :: forall eff. Option Attribute (SyntheticMouseEventFn eff)
onContextMenuCapture = opt "onContextMenuCapture"

onDoubleClick :: forall eff. Option Attribute (SyntheticMouseEventFn eff)
onDoubleClick = opt "onDoubleClick"

onDoubleClickCapture :: forall eff. Option Attribute (SyntheticMouseEventFn eff)
onDoubleClickCapture = opt "onDoubleClickCapture"

onMouseDown :: forall eff. Option Attribute (SyntheticMouseEventFn eff)
onMouseDown = opt "onMouseDown"

onMouseDownCapture :: forall eff. Option Attribute (SyntheticMouseEventFn eff)
onMouseDownCapture = opt "onMouseDownCapture"

onMouseEnter :: forall eff. Option Attribute (SyntheticMouseEventFn eff)
onMouseEnter = opt "onMouseEnter"

onMouseEnterCapture :: forall eff. Option Attribute (SyntheticMouseEventFn eff)
onMouseEnterCapture = opt "onMouseEnterCapture"

onMouseLeave :: forall eff. Option Attribute (SyntheticMouseEventFn eff)
onMouseLeave = opt "onMouseLeave"

onMouseLeaveCapture :: forall eff. Option Attribute (SyntheticMouseEventFn eff)
onMouseLeaveCapture = opt "onMouseLeaveCapture"

onMouseMove :: forall eff. Option Attribute (SyntheticMouseEventFn eff)
onMouseMove = opt "onMouseMove"

onMouseMoveCapture :: forall eff. Option Attribute (SyntheticMouseEventFn eff)
onMouseMoveCapture = opt "onMouseMoveCapture"

onMouseOut :: forall eff. Option Attribute (SyntheticMouseEventFn eff)
onMouseOut = opt "onMouseOut"

onMouseOutCapture :: forall eff. Option Attribute (SyntheticMouseEventFn eff)
onMouseOutCapture = opt "onMouseOutCapture"

onMouseOver :: forall eff. Option Attribute (SyntheticMouseEventFn eff)
onMouseOver = opt "onMouseOver"

onMouseOverCapture :: forall eff. Option Attribute (SyntheticMouseEventFn eff)
onMouseOverCapture = opt "onMouseOverCapture"

onMouseUp :: forall eff. Option Attribute (SyntheticMouseEventFn eff)
onMouseUp = opt "onMouseUp"

onMouseUpCapture :: forall eff. Option Attribute (SyntheticMouseEventFn eff)
onMouseUpCapture = opt "onMouseUpCapture"

onTouchCancel :: forall eff. Option Attribute (SyntheticTouchEventFn eff)
onTouchCancel = opt "onTouchCancel"

onTouchCancelCapture :: forall eff. Option Attribute (SyntheticTouchEventFn eff)
onTouchCancelCapture = opt "onTouchCancelCapture"

onTouchEnd :: forall eff. Option Attribute (SyntheticTouchEventFn eff)
onTouchEnd = opt "onTouchEnd"

onTouchEndCapture :: forall eff. Option Attribute (SyntheticTouchEventFn eff)
onTouchEndCapture = opt "onTouchEndCapture"

onTouchMove :: forall eff. Option Attribute (SyntheticTouchEventFn eff)
onTouchMove = opt "onTouchMove"

onTouchMoveCapture :: forall eff. Option Attribute (SyntheticTouchEventFn eff)
onTouchMoveCapture = opt "onTouchMoveCapture"

onTouchStart :: forall eff. Option Attribute (SyntheticTouchEventFn eff)
onTouchStart = opt "onTouchStart"

onTouchStartCapture :: forall eff. Option Attribute (SyntheticTouchEventFn eff)
onTouchStartCapture = opt "onTouchStartCapture"

onScroll :: forall eff. Option Attribute (SyntheticUIEventFn eff)
onScroll = opt "onScroll"

onScrollCapture :: forall eff. Option Attribute (SyntheticUIEventFn eff)
onScrollCapture = opt "onScrollCapture"

onWheel :: forall eff. Option Attribute (SyntheticWheelEventFn eff)
onWheel = opt "onWheel"

onWheelCapture :: forall eff. Option Attribute (SyntheticWheelEventFn eff)
onWheelCapture = opt "onWheelCapture"
