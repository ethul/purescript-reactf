module React.Attributes
  ( Attributes()
  , Attribute()
  , accept
  , acceptCharset
  , accessKey
  , action
  , allowFullScreen
  , allowTransparency
  , alt
  , aria
  , async
  , autoCapitalize
  , autoComplete
  , autoCorrect
  , autoPlay
  , cellPadding
  , cellSpacing
  , charSet
  , checked
  , classID
  , className
  , colSpan
  , cols
  , content
  , contentEditable
  , contextMenu
  , controls
  , coords
  , crossOrigin
  , cx
  , cy
  , d
  , dangerouslySetInnerHTML
  , _data
  , _data'
  , dateTime
  , defer
  , dir
  , disabled
  , download
  , draggable
  , dx
  , dy
  , encType
  , fill
  , fillOpacity
  , fontFamily
  , fontSize
  , form
  , formAction
  , formEncType
  , formMethod
  , formNoValidate
  , formTarget
  , frameBorder
  , fx
  , fy
  , gradientTransform
  , gradientUnits
  , height
  , hidden
  , href
  , hrefLang
  , htmlFor
  , httpEquiv
  , icon
  , id
  , itemProp
  , itemScope
  , itemType
  , key
  , label
  , lang
  , list
  , loop
  , manifest
  , marginHeight
  , marginWidth
  , markerEnd
  , markerMid
  , markerStart
  , max
  , maxLength
  , media
  , mediaGroup
  , method
  , min
  , multiple
  , muted
  , name
  , noValidate
  , offset
  , opacity
  , open
  , pattern
  , patternContentUnits
  , patternUnits
  , placeholder
  , points
  , poster
  , preload
  , preserveAspectRatio
  , property
  , r
  , radioGroup
  , readOnly
  , ref
  , rel
  , required
  , role
  , rowSpan
  , rows
  , rx
  , ry
  , sandbox
  , scope
  , scrolling
  , seamless
  , selected
  , shape
  , size
  , sizes
  , span
  , spellCheck
  , spreadMethod
  , src
  , srcDoc
  , srcSet
  , start
  , step
  , stopColor
  , stopOpacity
  , stroke
  , strokeDasharray
  , strokeLinecap
  , strokeOpacity
  , strokeWidth
  , style
  , tabIndex
  , target
  , textAnchor
  , title
  , transform
  , _type
  , useMap
  , value
  , version
  , viewBox
  , width
  , wmode
  , x
  , x1
  , x2
  , y
  , y1
  , y2
  ) where

import Prelude hiding (id)

import Data.Options
import Data.Monoid (Monoid, mempty)

type Attributes = Options Attribute

data Attribute

foreign import mkAttribute "function mkAttribute(name){ return name; }" :: forall a. String -> Option Attribute a

accept :: Option Attribute String
accept = mkAttribute "accept"

acceptCharset :: Option Attribute String
acceptCharset = mkAttribute "acceptCharset"

accessKey :: Option Attribute String
accessKey = mkAttribute "accessKey"

action :: Option Attribute String
action = mkAttribute "action"

allowFullScreen :: Option Attribute Boolean
allowFullScreen = mkAttribute "allowFullScreen"

allowTransparency :: Option Attribute Boolean
allowTransparency = mkAttribute "allowTransparency"

alt :: Option Attribute String
alt = mkAttribute "alt"

async :: Option Attribute Boolean
async = mkAttribute "async"

aria :: String -> Option Attribute String
aria s = mkAttribute $ "aria-" ++ s

autoCapitalize :: Option Attribute String
autoCapitalize = mkAttribute "autoCapitalize"

autoComplete :: Option Attribute String
autoComplete = mkAttribute "autoComplete"

autoCorrect :: Option Attribute String
autoCorrect = mkAttribute "autoCorrect"

autoPlay :: Option Attribute Boolean
autoPlay = mkAttribute "autoPlay"

cellPadding :: Option Attribute Number
cellPadding = mkAttribute "cellPadding"

cellSpacing :: Option Attribute Number
cellSpacing = mkAttribute "cellSpacing"

charSet :: Option Attribute String
charSet = mkAttribute "charSet"

checked :: Option Attribute Boolean
checked = mkAttribute "checked"

classID :: Option Attribute String
classID = mkAttribute "classID"

className :: Option Attribute String
className = mkAttribute "className"

colSpan :: Option Attribute Number
colSpan = mkAttribute "colSpan"

cols :: Option Attribute Number
cols = mkAttribute "cols"

content :: Option Attribute String
content = mkAttribute "content"

contentEditable :: Option Attribute Boolean
contentEditable = mkAttribute "contentEditable"

contextMenu :: Option Attribute String
contextMenu = mkAttribute "contextMenu"

controls :: Option Attribute Boolean
controls = mkAttribute "controls"

coords :: Option Attribute String
coords = mkAttribute "coords"

crossOrigin :: Option Attribute String
crossOrigin = mkAttribute "crossOrigin"

cx :: Option Attribute Number
cx = mkAttribute "cx"

cy :: Option Attribute Number
cy = mkAttribute "cy"

d :: Option Attribute String
d = mkAttribute "d"

dangerouslySetInnerHTML :: Option Attribute { __html :: String }
dangerouslySetInnerHTML = mkAttribute "dangerouslySetInnerHTML"

_data :: forall value. String -> Option Attribute value
_data s = mkAttribute $ "data-" ++ s

_data' :: Option Attribute String
_data' = mkAttribute "data"

dateTime :: Option Attribute String
dateTime = mkAttribute "dateTime"

defer :: Option Attribute Boolean
defer = mkAttribute "defer"

dir :: Option Attribute String
dir = mkAttribute "dir"

disabled :: Option Attribute Boolean
disabled = mkAttribute "disabled"

download :: Option Attribute Boolean
download = mkAttribute "download"

draggable :: Option Attribute Boolean
draggable = mkAttribute "draggable"

dx :: Option Attribute Number
dx = mkAttribute "dx"

dy :: Option Attribute Number
dy = mkAttribute "dy"

encType :: Option Attribute String
encType = mkAttribute "encType"

fill :: Option Attribute String
fill = mkAttribute "fill"

fillOpacity :: Option Attribute Number
fillOpacity = mkAttribute "fillOpacity"

fontFamily :: Option Attribute String
fontFamily = mkAttribute "fontFamily"

fontSize :: Option Attribute String
fontSize = mkAttribute "fontSize"

form :: Option Attribute String
form = mkAttribute "form"

formAction :: Option Attribute String
formAction = mkAttribute "formAction"

formEncType :: Option Attribute String
formEncType = mkAttribute "formEncType"

formMethod :: Option Attribute String
formMethod = mkAttribute "formMethod"

formNoValidate :: Option Attribute Boolean
formNoValidate = mkAttribute "formNoValidate"

formTarget :: Option Attribute String
formTarget = mkAttribute "formTarget"

frameBorder :: Option Attribute Number
frameBorder = mkAttribute "frameBorder"

fx :: Option Attribute Number
fx = mkAttribute "fx"

fy :: Option Attribute Number
fy = mkAttribute "fy"

gradientTransform :: Option Attribute String
gradientTransform = mkAttribute "gradientTransform"

gradientUnits :: Option Attribute String
gradientUnits = mkAttribute "gradientUnits"

height :: Option Attribute String
height = mkAttribute "height"

hidden :: Option Attribute String
hidden = mkAttribute "hidden"

href :: Option Attribute String
href = mkAttribute "href"

hrefLang :: Option Attribute String
hrefLang = mkAttribute "hrefLang"

htmlFor :: Option Attribute String
htmlFor = mkAttribute "htmlFor"

httpEquiv :: Option Attribute String
httpEquiv = mkAttribute "httpEquiv"

icon :: Option Attribute String
icon = mkAttribute "icon"

id :: Option Attribute String
id = mkAttribute "id"

itemProp :: Option Attribute String
itemProp = mkAttribute "itemProp"

itemScope :: Option Attribute String
itemScope = mkAttribute "itemScope"

itemType :: Option Attribute String
itemType = mkAttribute "itemType"

key :: Option Attribute String
key = mkAttribute "key"

label :: Option Attribute String
label = mkAttribute "label"

lang :: Option Attribute String
lang = mkAttribute "lang"

list :: Option Attribute String
list = mkAttribute "list"

loop :: Option Attribute Boolean
loop = mkAttribute "loop"

manifest :: Option Attribute String
manifest = mkAttribute "manifest"

marginHeight :: Option Attribute Number
marginHeight = mkAttribute "marginHeight"

marginWidth :: Option Attribute Number
marginWidth = mkAttribute "marginWidth"

markerEnd :: Option Attribute String
markerEnd = mkAttribute "markerEnd"

markerMid :: Option Attribute String
markerMid = mkAttribute "markerMid"

markerStart :: Option Attribute String
markerStart = mkAttribute "markerStart"

max :: Option Attribute Number
max = mkAttribute "max"

maxLength :: Option Attribute Number
maxLength = mkAttribute "maxLength"

media :: Option Attribute String
media = mkAttribute "media"

mediaGroup :: Option Attribute String
mediaGroup = mkAttribute "mediaGroup"

method :: Option Attribute String
method = mkAttribute "method"

min :: Option Attribute Number
min = mkAttribute "min"

multiple :: Option Attribute Boolean
multiple = mkAttribute "multiple"

muted :: Option Attribute Boolean
muted = mkAttribute "muted"

name :: Option Attribute String
name = mkAttribute "name"

noValidate :: Option Attribute Boolean
noValidate = mkAttribute "noValidate"

offset :: Option Attribute String
offset = mkAttribute "offset"

opacity :: Option Attribute Number
opacity = mkAttribute "opacity"

open :: Option Attribute String
open = mkAttribute "open"

pattern :: Option Attribute String
pattern = mkAttribute "pattern"

patternContentUnits :: Option Attribute String
patternContentUnits = mkAttribute "patternContentUnits"

patternUnits :: Option Attribute String
patternUnits = mkAttribute "patternUnits"

placeholder :: Option Attribute String
placeholder = mkAttribute "placeholder"

points :: Option Attribute String
points = mkAttribute "points"

poster :: Option Attribute String
poster = mkAttribute "poster"

preload :: Option Attribute String
preload = mkAttribute "preload"

preserveAspectRatio :: Option Attribute String
preserveAspectRatio = mkAttribute "preserveAspectRatio"

property :: Option Attribute String
property = mkAttribute "property"

r :: Option Attribute Number
r = mkAttribute "r"

radioGroup :: Option Attribute String
radioGroup = mkAttribute "radioGroup"

readOnly :: Option Attribute Boolean
readOnly = mkAttribute "readOnly"

ref :: Option Attribute String
ref = mkAttribute "ref"

rel :: Option Attribute String
rel = mkAttribute "rel"

required :: Option Attribute Boolean
required = mkAttribute "required"

role :: Option Attribute String
role = mkAttribute "role"

rowSpan :: Option Attribute Number
rowSpan = mkAttribute "rowSpan"

rows :: Option Attribute Number
rows = mkAttribute "rows"

rx :: Option Attribute Number
rx = mkAttribute "rx"

ry :: Option Attribute Number
ry = mkAttribute "ry"

sandbox :: Option Attribute String
sandbox = mkAttribute "sandbox"

scope :: Option Attribute String
scope = mkAttribute "scope"

scrolling :: Option Attribute String
scrolling = mkAttribute "scrolling"

seamless :: Option Attribute Boolean
seamless = mkAttribute "seamless"

selected :: Option Attribute Boolean
selected = mkAttribute "selected"

shape :: Option Attribute String
shape = mkAttribute "shape"

size :: Option Attribute Number
size = mkAttribute "size"

sizes :: Option Attribute String
sizes = mkAttribute "sizes"

span :: Option Attribute Number
span = mkAttribute "span"

spellCheck :: Option Attribute Boolean
spellCheck = mkAttribute "spellCheck"

spreadMethod :: Option Attribute String
spreadMethod = mkAttribute "spreadMethod"

src :: Option Attribute String
src = mkAttribute "src"

srcDoc :: Option Attribute String
srcDoc = mkAttribute "srcDoc"

srcSet :: Option Attribute String
srcSet = mkAttribute "srcSet"

start :: Option Attribute String
start = mkAttribute "start"

step :: Option Attribute Number
step = mkAttribute "step"

stopColor :: Option Attribute String
stopColor = mkAttribute "stopColor"

stopOpacity :: Option Attribute Number
stopOpacity = mkAttribute "stopOpacity"

stroke :: Option Attribute String
stroke = mkAttribute "stroke"

strokeDasharray :: Option Attribute String
strokeDasharray = mkAttribute "strokeDasharray"

strokeLinecap :: Option Attribute String
strokeLinecap = mkAttribute "strokeLinecap"

strokeOpacity :: Option Attribute Number
strokeOpacity = mkAttribute "strokeOpacity"

strokeWidth :: Option Attribute String
strokeWidth = mkAttribute "strokeWidth"

style :: forall style. Option Attribute { | style }
style = mkAttribute "style"

tabIndex :: Option Attribute Number
tabIndex = mkAttribute "tabIndex"

target :: Option Attribute String
target = mkAttribute "target"

textAnchor :: Option Attribute String
textAnchor = mkAttribute "textAnchor"

title :: Option Attribute String
title = mkAttribute "title"

transform :: Option Attribute String
transform = mkAttribute "transform"

_type :: Option Attribute String
_type = mkAttribute "type"

useMap :: Option Attribute String
useMap = mkAttribute "useMap"

value :: Option Attribute String
value = mkAttribute "value"

version :: Option Attribute String
version = mkAttribute "version"

viewBox :: Option Attribute String
viewBox = mkAttribute "viewBox"

width :: Option Attribute String
width = mkAttribute "width"

wmode :: Option Attribute String
wmode = mkAttribute "wmode"

x :: Option Attribute Number
x = mkAttribute "x"

x1 :: Option Attribute Number
x1 = mkAttribute "x1"

x2 :: Option Attribute Number
x2 = mkAttribute "x2"

y :: Option Attribute Number
y = mkAttribute "y"

y1 :: Option Attribute Number
y1 = mkAttribute "y1"

y2 :: Option Attribute Number
y2 = mkAttribute "y2"
