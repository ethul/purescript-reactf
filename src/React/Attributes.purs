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

import Data.Options (Option(), Options(), IsOption, opt)
import Data.Monoid (Monoid, mempty)

type Attributes = Options Attribute

data Attribute

accept :: Option Attribute String
accept = opt "accept"

acceptCharset :: Option Attribute String
acceptCharset = opt "acceptCharset"

accessKey :: Option Attribute String
accessKey = opt "accessKey"

action :: Option Attribute String
action = opt "action"

allowFullScreen :: Option Attribute Boolean
allowFullScreen = opt "allowFullScreen"

allowTransparency :: Option Attribute Boolean
allowTransparency = opt "allowTransparency"

alt :: Option Attribute String
alt = opt "alt"

async :: Option Attribute Boolean
async = opt "async"

aria :: String -> Option Attribute String
aria s = opt $ "aria-" ++ s

autoCapitalize :: Option Attribute String
autoCapitalize = opt "autoCapitalize"

autoComplete :: Option Attribute String
autoComplete = opt "autoComplete"

autoCorrect :: Option Attribute String
autoCorrect = opt "autoCorrect"

autoPlay :: Option Attribute Boolean
autoPlay = opt "autoPlay"

cellPadding :: Option Attribute Number
cellPadding = opt "cellPadding"

cellSpacing :: Option Attribute Number
cellSpacing = opt "cellSpacing"

charSet :: Option Attribute String
charSet = opt "charSet"

checked :: Option Attribute Boolean
checked = opt "checked"

classID :: Option Attribute String
classID = opt "classID"

className :: Option Attribute String
className = opt "className"

colSpan :: Option Attribute Number
colSpan = opt "colSpan"

cols :: Option Attribute Number
cols = opt "cols"

content :: Option Attribute String
content = opt "content"

contentEditable :: Option Attribute Boolean
contentEditable = opt "contentEditable"

contextMenu :: Option Attribute String
contextMenu = opt "contextMenu"

controls :: Option Attribute Boolean
controls = opt "controls"

coords :: Option Attribute String
coords = opt "coords"

crossOrigin :: Option Attribute String
crossOrigin = opt "crossOrigin"

cx :: Option Attribute Number
cx = opt "cx"

cy :: Option Attribute Number
cy = opt "cy"

d :: Option Attribute String
d = opt "d"

dangerouslySetInnerHTML :: Option Attribute { __html :: String }
dangerouslySetInnerHTML = opt "dangerouslySetInnerHTML"

_data :: forall value. (IsOption value) => String -> Option Attribute value
_data s = opt $ "data-" ++ s

_data' :: Option Attribute String
_data' = opt "data"

dateTime :: Option Attribute String
dateTime = opt "dateTime"

defer :: Option Attribute Boolean
defer = opt "defer"

dir :: Option Attribute String
dir = opt "dir"

disabled :: Option Attribute Boolean
disabled = opt "disabled"

download :: Option Attribute Boolean
download = opt "download"

draggable :: Option Attribute Boolean
draggable = opt "draggable"

dx :: Option Attribute Number
dx = opt "dx"

dy :: Option Attribute Number
dy = opt "dy"

encType :: Option Attribute String
encType = opt "encType"

fill :: Option Attribute String
fill = opt "fill"

fillOpacity :: Option Attribute Number
fillOpacity = opt "fillOpacity"

fontFamily :: Option Attribute String
fontFamily = opt "fontFamily"

fontSize :: Option Attribute String
fontSize = opt "fontSize"

form :: Option Attribute String
form = opt "form"

formAction :: Option Attribute String
formAction = opt "formAction"

formEncType :: Option Attribute String
formEncType = opt "formEncType"

formMethod :: Option Attribute String
formMethod = opt "formMethod"

formNoValidate :: Option Attribute Boolean
formNoValidate = opt "formNoValidate"

formTarget :: Option Attribute String
formTarget = opt "formTarget"

frameBorder :: Option Attribute Number
frameBorder = opt "frameBorder"

fx :: Option Attribute Number
fx = opt "fx"

fy :: Option Attribute Number
fy = opt "fy"

gradientTransform :: Option Attribute String
gradientTransform = opt "gradientTransform"

gradientUnits :: Option Attribute String
gradientUnits = opt "gradientUnits"

height :: Option Attribute String
height = opt "height"

hidden :: Option Attribute String
hidden = opt "hidden"

href :: Option Attribute String
href = opt "href"

hrefLang :: Option Attribute String
hrefLang = opt "hrefLang"

htmlFor :: Option Attribute String
htmlFor = opt "htmlFor"

httpEquiv :: Option Attribute String
httpEquiv = opt "httpEquiv"

icon :: Option Attribute String
icon = opt "icon"

id :: Option Attribute String
id = opt "id"

itemProp :: Option Attribute String
itemProp = opt "itemProp"

itemScope :: Option Attribute String
itemScope = opt "itemScope"

itemType :: Option Attribute String
itemType = opt "itemType"

key :: Option Attribute String
key = opt "key"

label :: Option Attribute String
label = opt "label"

lang :: Option Attribute String
lang = opt "lang"

list :: Option Attribute String
list = opt "list"

loop :: Option Attribute Boolean
loop = opt "loop"

manifest :: Option Attribute String
manifest = opt "manifest"

marginHeight :: Option Attribute Number
marginHeight = opt "marginHeight"

marginWidth :: Option Attribute Number
marginWidth = opt "marginWidth"

markerEnd :: Option Attribute String
markerEnd = opt "markerEnd"

markerMid :: Option Attribute String
markerMid = opt "markerMid"

markerStart :: Option Attribute String
markerStart = opt "markerStart"

max :: Option Attribute Number
max = opt "max"

maxLength :: Option Attribute Number
maxLength = opt "maxLength"

media :: Option Attribute String
media = opt "media"

mediaGroup :: Option Attribute String
mediaGroup = opt "mediaGroup"

method :: Option Attribute String
method = opt "method"

min :: Option Attribute Number
min = opt "min"

multiple :: Option Attribute Boolean
multiple = opt "multiple"

muted :: Option Attribute Boolean
muted = opt "muted"

name :: Option Attribute String
name = opt "name"

noValidate :: Option Attribute Boolean
noValidate = opt "noValidate"

offset :: Option Attribute String
offset = opt "offset"

opacity :: Option Attribute Number
opacity = opt "opacity"

open :: Option Attribute String
open = opt "open"

pattern :: Option Attribute String
pattern = opt "pattern"

patternContentUnits :: Option Attribute String
patternContentUnits = opt "patternContentUnits"

patternUnits :: Option Attribute String
patternUnits = opt "patternUnits"

placeholder :: Option Attribute String
placeholder = opt "placeholder"

points :: Option Attribute String
points = opt "points"

poster :: Option Attribute String
poster = opt "poster"

preload :: Option Attribute String
preload = opt "preload"

preserveAspectRatio :: Option Attribute String
preserveAspectRatio = opt "preserveAspectRatio"

property :: Option Attribute String
property = opt "property"

r :: Option Attribute Number
r = opt "r"

radioGroup :: Option Attribute String
radioGroup = opt "radioGroup"

readOnly :: Option Attribute Boolean
readOnly = opt "readOnly"

ref :: Option Attribute String
ref = opt "ref"

rel :: Option Attribute String
rel = opt "rel"

required :: Option Attribute Boolean
required = opt "required"

role :: Option Attribute String
role = opt "role"

rowSpan :: Option Attribute Number
rowSpan = opt "rowSpan"

rows :: Option Attribute Number
rows = opt "rows"

rx :: Option Attribute Number
rx = opt "rx"

ry :: Option Attribute Number
ry = opt "ry"

sandbox :: Option Attribute String
sandbox = opt "sandbox"

scope :: Option Attribute String
scope = opt "scope"

scrolling :: Option Attribute String
scrolling = opt "scrolling"

seamless :: Option Attribute Boolean
seamless = opt "seamless"

selected :: Option Attribute Boolean
selected = opt "selected"

shape :: Option Attribute String
shape = opt "shape"

size :: Option Attribute Number
size = opt "size"

sizes :: Option Attribute String
sizes = opt "sizes"

span :: Option Attribute Number
span = opt "span"

spellCheck :: Option Attribute Boolean
spellCheck = opt "spellCheck"

spreadMethod :: Option Attribute String
spreadMethod = opt "spreadMethod"

src :: Option Attribute String
src = opt "src"

srcDoc :: Option Attribute String
srcDoc = opt "srcDoc"

srcSet :: Option Attribute String
srcSet = opt "srcSet"

start :: Option Attribute String
start = opt "start"

step :: Option Attribute Number
step = opt "step"

stopColor :: Option Attribute String
stopColor = opt "stopColor"

stopOpacity :: Option Attribute Number
stopOpacity = opt "stopOpacity"

stroke :: Option Attribute String
stroke = opt "stroke"

strokeDasharray :: Option Attribute String
strokeDasharray = opt "strokeDasharray"

strokeLinecap :: Option Attribute String
strokeLinecap = opt "strokeLinecap"

strokeOpacity :: Option Attribute Number
strokeOpacity = opt "strokeOpacity"

strokeWidth :: Option Attribute String
strokeWidth = opt "strokeWidth"

style :: forall style. Option Attribute { | style }
style = opt "style"

tabIndex :: Option Attribute Number
tabIndex = opt "tabIndex"

target :: Option Attribute String
target = opt "target"

textAnchor :: Option Attribute String
textAnchor = opt "textAnchor"

title :: Option Attribute String
title = opt "title"

transform :: Option Attribute String
transform = opt "transform"

_type :: Option Attribute String
_type = opt "type"

useMap :: Option Attribute String
useMap = opt "useMap"

value :: Option Attribute String
value = opt "value"

version :: Option Attribute String
version = opt "version"

viewBox :: Option Attribute String
viewBox = opt "viewBox"

width :: Option Attribute String
width = opt "width"

wmode :: Option Attribute String
wmode = opt "wmode"

x :: Option Attribute Number
x = opt "x"

x1 :: Option Attribute Number
x1 = opt "x1"

x2 :: Option Attribute Number
x2 = opt "x2"

y :: Option Attribute Number
y = opt "y"

y1 :: Option Attribute Number
y1 = opt "y1"

y2 :: Option Attribute Number
y2 = opt "y2"
