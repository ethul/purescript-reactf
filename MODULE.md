# Module Documentation

## Module React.Attributes

#### `Attributes`

``` purescript
type Attributes = Options Attribute
```


#### `Attribute`

``` purescript
data Attribute
```


#### `accept`

``` purescript
accept :: Option Attribute String
```


#### `acceptCharset`

``` purescript
acceptCharset :: Option Attribute String
```


#### `accessKey`

``` purescript
accessKey :: Option Attribute String
```


#### `action`

``` purescript
action :: Option Attribute String
```


#### `allowFullScreen`

``` purescript
allowFullScreen :: Option Attribute Boolean
```


#### `allowTransparency`

``` purescript
allowTransparency :: Option Attribute Boolean
```


#### `alt`

``` purescript
alt :: Option Attribute String
```


#### `async`

``` purescript
async :: Option Attribute Boolean
```


#### `aria`

``` purescript
aria :: String -> Option Attribute String
```


#### `autoCapitalize`

``` purescript
autoCapitalize :: Option Attribute String
```


#### `autoComplete`

``` purescript
autoComplete :: Option Attribute String
```


#### `autoCorrect`

``` purescript
autoCorrect :: Option Attribute String
```


#### `autoPlay`

``` purescript
autoPlay :: Option Attribute Boolean
```


#### `cellPadding`

``` purescript
cellPadding :: Option Attribute Number
```


#### `cellSpacing`

``` purescript
cellSpacing :: Option Attribute Number
```


#### `charSet`

``` purescript
charSet :: Option Attribute String
```


#### `checked`

``` purescript
checked :: Option Attribute Boolean
```


#### `classID`

``` purescript
classID :: Option Attribute String
```


#### `className`

``` purescript
className :: Option Attribute String
```


#### `colSpan`

``` purescript
colSpan :: Option Attribute Number
```


#### `cols`

``` purescript
cols :: Option Attribute Number
```


#### `content`

``` purescript
content :: Option Attribute String
```


#### `contentEditable`

``` purescript
contentEditable :: Option Attribute Boolean
```


#### `contextMenu`

``` purescript
contextMenu :: Option Attribute String
```


#### `controls`

``` purescript
controls :: Option Attribute Boolean
```


#### `coords`

``` purescript
coords :: Option Attribute String
```


#### `crossOrigin`

``` purescript
crossOrigin :: Option Attribute String
```


#### `cx`

``` purescript
cx :: Option Attribute Number
```


#### `cy`

``` purescript
cy :: Option Attribute Number
```


#### `d`

``` purescript
d :: Option Attribute String
```


#### `dangerouslySetInnerHTML`

``` purescript
dangerouslySetInnerHTML :: Option Attribute { __html :: String }
```


#### `_data`

``` purescript
_data :: forall value. String -> Option Attribute value
```


#### `_data'`

``` purescript
_data' :: Option Attribute String
```


#### `dateTime`

``` purescript
dateTime :: Option Attribute String
```


#### `defer`

``` purescript
defer :: Option Attribute Boolean
```


#### `dir`

``` purescript
dir :: Option Attribute String
```


#### `disabled`

``` purescript
disabled :: Option Attribute Boolean
```


#### `download`

``` purescript
download :: Option Attribute Boolean
```


#### `draggable`

``` purescript
draggable :: Option Attribute Boolean
```


#### `dx`

``` purescript
dx :: Option Attribute Number
```


#### `dy`

``` purescript
dy :: Option Attribute Number
```


#### `encType`

``` purescript
encType :: Option Attribute String
```


#### `fill`

``` purescript
fill :: Option Attribute String
```


#### `fillOpacity`

``` purescript
fillOpacity :: Option Attribute Number
```


#### `fontFamily`

``` purescript
fontFamily :: Option Attribute String
```


#### `fontSize`

``` purescript
fontSize :: Option Attribute String
```


#### `form`

``` purescript
form :: Option Attribute String
```


#### `formAction`

``` purescript
formAction :: Option Attribute String
```


#### `formEncType`

``` purescript
formEncType :: Option Attribute String
```


#### `formMethod`

``` purescript
formMethod :: Option Attribute String
```


#### `formNoValidate`

``` purescript
formNoValidate :: Option Attribute Boolean
```


#### `formTarget`

``` purescript
formTarget :: Option Attribute String
```


#### `frameBorder`

``` purescript
frameBorder :: Option Attribute Number
```


#### `fx`

``` purescript
fx :: Option Attribute Number
```


#### `fy`

``` purescript
fy :: Option Attribute Number
```


#### `gradientTransform`

``` purescript
gradientTransform :: Option Attribute String
```


#### `gradientUnits`

``` purescript
gradientUnits :: Option Attribute String
```


#### `height`

``` purescript
height :: Option Attribute String
```


#### `hidden`

``` purescript
hidden :: Option Attribute String
```


#### `href`

``` purescript
href :: Option Attribute String
```


#### `hrefLang`

``` purescript
hrefLang :: Option Attribute String
```


#### `htmlFor`

``` purescript
htmlFor :: Option Attribute String
```


#### `httpEquiv`

``` purescript
httpEquiv :: Option Attribute String
```


#### `icon`

``` purescript
icon :: Option Attribute String
```


#### `id`

``` purescript
id :: Option Attribute String
```


#### `itemProp`

``` purescript
itemProp :: Option Attribute String
```


#### `itemScope`

``` purescript
itemScope :: Option Attribute String
```


#### `itemType`

``` purescript
itemType :: Option Attribute String
```


#### `key`

``` purescript
key :: Option Attribute String
```


#### `label`

``` purescript
label :: Option Attribute String
```


#### `lang`

``` purescript
lang :: Option Attribute String
```


#### `list`

``` purescript
list :: Option Attribute String
```


#### `loop`

``` purescript
loop :: Option Attribute Boolean
```


#### `manifest`

``` purescript
manifest :: Option Attribute String
```


#### `marginHeight`

``` purescript
marginHeight :: Option Attribute Number
```


#### `marginWidth`

``` purescript
marginWidth :: Option Attribute Number
```


#### `markerEnd`

``` purescript
markerEnd :: Option Attribute String
```


#### `markerMid`

``` purescript
markerMid :: Option Attribute String
```


#### `markerStart`

``` purescript
markerStart :: Option Attribute String
```


#### `max`

``` purescript
max :: Option Attribute Number
```


#### `maxLength`

``` purescript
maxLength :: Option Attribute Number
```


#### `media`

``` purescript
media :: Option Attribute String
```


#### `mediaGroup`

``` purescript
mediaGroup :: Option Attribute String
```


#### `method`

``` purescript
method :: Option Attribute String
```


#### `min`

``` purescript
min :: Option Attribute Number
```


#### `multiple`

``` purescript
multiple :: Option Attribute Boolean
```


#### `muted`

``` purescript
muted :: Option Attribute Boolean
```


#### `name`

``` purescript
name :: Option Attribute String
```


#### `noValidate`

``` purescript
noValidate :: Option Attribute Boolean
```


#### `offset`

``` purescript
offset :: Option Attribute String
```


#### `opacity`

``` purescript
opacity :: Option Attribute Number
```


#### `open`

``` purescript
open :: Option Attribute String
```


#### `pattern`

``` purescript
pattern :: Option Attribute String
```


#### `patternContentUnits`

``` purescript
patternContentUnits :: Option Attribute String
```


#### `patternUnits`

``` purescript
patternUnits :: Option Attribute String
```


#### `placeholder`

``` purescript
placeholder :: Option Attribute String
```


#### `points`

``` purescript
points :: Option Attribute String
```


#### `poster`

``` purescript
poster :: Option Attribute String
```


#### `preload`

``` purescript
preload :: Option Attribute String
```


#### `preserveAspectRatio`

``` purescript
preserveAspectRatio :: Option Attribute String
```


#### `property`

``` purescript
property :: Option Attribute String
```


#### `r`

``` purescript
r :: Option Attribute Number
```


#### `radioGroup`

``` purescript
radioGroup :: Option Attribute String
```


#### `readOnly`

``` purescript
readOnly :: Option Attribute Boolean
```


#### `ref`

``` purescript
ref :: Option Attribute String
```


#### `rel`

``` purescript
rel :: Option Attribute String
```


#### `required`

``` purescript
required :: Option Attribute Boolean
```


#### `role`

``` purescript
role :: Option Attribute String
```


#### `rowSpan`

``` purescript
rowSpan :: Option Attribute Number
```


#### `rows`

``` purescript
rows :: Option Attribute Number
```


#### `rx`

``` purescript
rx :: Option Attribute Number
```


#### `ry`

``` purescript
ry :: Option Attribute Number
```


#### `sandbox`

``` purescript
sandbox :: Option Attribute String
```


#### `scope`

``` purescript
scope :: Option Attribute String
```


#### `scrolling`

``` purescript
scrolling :: Option Attribute String
```


#### `seamless`

``` purescript
seamless :: Option Attribute Boolean
```


#### `selected`

``` purescript
selected :: Option Attribute Boolean
```


#### `shape`

``` purescript
shape :: Option Attribute String
```


#### `size`

``` purescript
size :: Option Attribute Number
```


#### `sizes`

``` purescript
sizes :: Option Attribute String
```


#### `span`

``` purescript
span :: Option Attribute Number
```


#### `spellCheck`

``` purescript
spellCheck :: Option Attribute Boolean
```


#### `spreadMethod`

``` purescript
spreadMethod :: Option Attribute String
```


#### `src`

``` purescript
src :: Option Attribute String
```


#### `srcDoc`

``` purescript
srcDoc :: Option Attribute String
```


#### `srcSet`

``` purescript
srcSet :: Option Attribute String
```


#### `start`

``` purescript
start :: Option Attribute String
```


#### `step`

``` purescript
step :: Option Attribute Number
```


#### `stopColor`

``` purescript
stopColor :: Option Attribute String
```


#### `stopOpacity`

``` purescript
stopOpacity :: Option Attribute Number
```


#### `stroke`

``` purescript
stroke :: Option Attribute String
```


#### `strokeDasharray`

``` purescript
strokeDasharray :: Option Attribute String
```


#### `strokeLinecap`

``` purescript
strokeLinecap :: Option Attribute String
```


#### `strokeOpacity`

``` purescript
strokeOpacity :: Option Attribute Number
```


#### `strokeWidth`

``` purescript
strokeWidth :: Option Attribute String
```


#### `style`

``` purescript
style :: forall style. Option Attribute {  | style }
```


#### `tabIndex`

``` purescript
tabIndex :: Option Attribute Number
```


#### `target`

``` purescript
target :: Option Attribute String
```


#### `textAnchor`

``` purescript
textAnchor :: Option Attribute String
```


#### `title`

``` purescript
title :: Option Attribute String
```


#### `transform`

``` purescript
transform :: Option Attribute String
```


#### `_type`

``` purescript
_type :: Option Attribute String
```


#### `useMap`

``` purescript
useMap :: Option Attribute String
```


#### `value`

``` purescript
value :: Option Attribute String
```


#### `version`

``` purescript
version :: Option Attribute String
```


#### `viewBox`

``` purescript
viewBox :: Option Attribute String
```


#### `width`

``` purescript
width :: Option Attribute String
```


#### `wmode`

``` purescript
wmode :: Option Attribute String
```


#### `x`

``` purescript
x :: Option Attribute Number
```


#### `x1`

``` purescript
x1 :: Option Attribute Number
```


#### `x2`

``` purescript
x2 :: Option Attribute Number
```


#### `y`

``` purescript
y :: Option Attribute Number
```


#### `y1`

``` purescript
y1 :: Option Attribute Number
```


#### `y2`

``` purescript
y2 :: Option Attribute Number
```



## Module React.Combinators

#### `IsElementNestable`

``` purescript
class IsElementNestable a where
  (.>) :: (Elements -> React Element) -> a -> React Element
```


#### `isElementNestableOne`

``` purescript
instance isElementNestableOne :: IsElementNestable (Free (Coyoneda ReactF) Element)
```


#### `isElementNestableMany`

``` purescript
instance isElementNestableMany :: IsElementNestable [Free (Coyoneda ReactF) Element]
```



## Module React.ComponentF

#### `Component`

``` purescript
type Component eff = FreeC (ComponentF eff)
```


#### `Reference`

``` purescript
data Reference props state
```


#### `Props`

``` purescript
newtype Props props
  = Props props
```


#### `State`

``` purescript
newtype State state
  = State state
```


#### `ComponentF`

``` purescript
data ComponentF eff a
  = GetProps (forall props state. Reference props state) (forall props. Props props -> a)
  | GetState (forall props state. Reference props state) (forall state. State state -> a)
  | SetStateSync (forall props state. Reference props state) (forall state. State state) a
  | SetStateAsync (forall props state. Reference props state) (forall state. State state) a
  | ComponentEff (forall ret. Eff eff ret) (forall ret. ret -> a)
```


#### `monadEffComponent`

``` purescript
instance monadEffComponent :: MonadEff eff (Free (Coyoneda (ComponentF eff)))
```


#### `getState`

``` purescript
getState :: forall eff props state. Reference props state -> Component eff (State state)
```


#### `setStateSync`

``` purescript
setStateSync :: forall eff props state. Reference props state -> State state -> Component eff Unit
```


#### `setStateAsync`

``` purescript
setStateAsync :: forall eff props state. Reference props state -> State state -> Component eff Unit
```



## Module React.ComponentI

#### `run`

``` purescript
run :: forall eff a. Component eff a -> Eff (react :: ReactE) a
```



## Module React.Dom

#### `null`

``` purescript
null :: React Element
```


#### `raw`

``` purescript
raw :: String -> React Element
```


#### `a`

``` purescript
a :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `a'`

``` purescript
a' :: Elements -> React Element
```


#### `abbr`

``` purescript
abbr :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `abbr'`

``` purescript
abbr' :: Elements -> React Element
```


#### `address`

``` purescript
address :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `address'`

``` purescript
address' :: Elements -> React Element
```


#### `area`

``` purescript
area :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `area'`

``` purescript
area' :: Elements -> React Element
```


#### `article`

``` purescript
article :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `article'`

``` purescript
article' :: Elements -> React Element
```


#### `aside`

``` purescript
aside :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `aside'`

``` purescript
aside' :: Elements -> React Element
```


#### `audio`

``` purescript
audio :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `audio'`

``` purescript
audio' :: Elements -> React Element
```


#### `b`

``` purescript
b :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `b'`

``` purescript
b' :: Elements -> React Element
```


#### `base`

``` purescript
base :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `base'`

``` purescript
base' :: Elements -> React Element
```


#### `bdi`

``` purescript
bdi :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `bdi'`

``` purescript
bdi' :: Elements -> React Element
```


#### `bdo`

``` purescript
bdo :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `bdo'`

``` purescript
bdo' :: Elements -> React Element
```


#### `big`

``` purescript
big :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `big'`

``` purescript
big' :: Elements -> React Element
```


#### `blockquote`

``` purescript
blockquote :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `blockquote'`

``` purescript
blockquote' :: Elements -> React Element
```


#### `body`

``` purescript
body :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `body'`

``` purescript
body' :: Elements -> React Element
```


#### `br`

``` purescript
br :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `br'`

``` purescript
br' :: Elements -> React Element
```


#### `button`

``` purescript
button :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `button'`

``` purescript
button' :: Elements -> React Element
```


#### `canvas`

``` purescript
canvas :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `canvas'`

``` purescript
canvas' :: Elements -> React Element
```


#### `caption`

``` purescript
caption :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `caption'`

``` purescript
caption' :: Elements -> React Element
```


#### `circle`

``` purescript
circle :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `circle'`

``` purescript
circle' :: Elements -> React Element
```


#### `cite`

``` purescript
cite :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `cite'`

``` purescript
cite' :: Elements -> React Element
```


#### `code`

``` purescript
code :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `code'`

``` purescript
code' :: Elements -> React Element
```


#### `col`

``` purescript
col :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `col'`

``` purescript
col' :: Elements -> React Element
```


#### `colgroup`

``` purescript
colgroup :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `colgroup'`

``` purescript
colgroup' :: Elements -> React Element
```


#### `_data`

``` purescript
_data :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `_data'`

``` purescript
_data' :: Elements -> React Element
```


#### `datalist`

``` purescript
datalist :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `datalist'`

``` purescript
datalist' :: Elements -> React Element
```


#### `dd`

``` purescript
dd :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `dd'`

``` purescript
dd' :: Elements -> React Element
```


#### `defs`

``` purescript
defs :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `defs'`

``` purescript
defs' :: Elements -> React Element
```


#### `del`

``` purescript
del :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `del'`

``` purescript
del' :: Elements -> React Element
```


#### `details`

``` purescript
details :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `details'`

``` purescript
details' :: Elements -> React Element
```


#### `dfn`

``` purescript
dfn :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `dfn'`

``` purescript
dfn' :: Elements -> React Element
```


#### `dialog`

``` purescript
dialog :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `dialog'`

``` purescript
dialog' :: Elements -> React Element
```


#### `div`

``` purescript
div :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `div'`

``` purescript
div' :: Elements -> React Element
```


#### `dl`

``` purescript
dl :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `dl'`

``` purescript
dl' :: Elements -> React Element
```


#### `dt`

``` purescript
dt :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `dt'`

``` purescript
dt' :: Elements -> React Element
```


#### `ellipse`

``` purescript
ellipse :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `ellipse'`

``` purescript
ellipse' :: Elements -> React Element
```


#### `em`

``` purescript
em :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `em'`

``` purescript
em' :: Elements -> React Element
```


#### `embed`

``` purescript
embed :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `embed'`

``` purescript
embed' :: Elements -> React Element
```


#### `fieldset`

``` purescript
fieldset :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `fieldset'`

``` purescript
fieldset' :: Elements -> React Element
```


#### `figcaption`

``` purescript
figcaption :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `figcaption'`

``` purescript
figcaption' :: Elements -> React Element
```


#### `figure`

``` purescript
figure :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `figure'`

``` purescript
figure' :: Elements -> React Element
```


#### `footer`

``` purescript
footer :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `footer'`

``` purescript
footer' :: Elements -> React Element
```


#### `form`

``` purescript
form :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `form'`

``` purescript
form' :: Elements -> React Element
```


#### `g`

``` purescript
g :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `g'`

``` purescript
g' :: Elements -> React Element
```


#### `h1`

``` purescript
h1 :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `h1'`

``` purescript
h1' :: Elements -> React Element
```


#### `h2`

``` purescript
h2 :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `h2'`

``` purescript
h2' :: Elements -> React Element
```


#### `h3`

``` purescript
h3 :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `h3'`

``` purescript
h3' :: Elements -> React Element
```


#### `h4`

``` purescript
h4 :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `h4'`

``` purescript
h4' :: Elements -> React Element
```


#### `h5`

``` purescript
h5 :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `h5'`

``` purescript
h5' :: Elements -> React Element
```


#### `h6`

``` purescript
h6 :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `h6'`

``` purescript
h6' :: Elements -> React Element
```


#### `head`

``` purescript
head :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `head'`

``` purescript
head' :: Elements -> React Element
```


#### `header`

``` purescript
header :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `header'`

``` purescript
header' :: Elements -> React Element
```


#### `hr`

``` purescript
hr :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `hr'`

``` purescript
hr' :: Elements -> React Element
```


#### `html`

``` purescript
html :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `html'`

``` purescript
html' :: Elements -> React Element
```


#### `i`

``` purescript
i :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `i'`

``` purescript
i' :: Elements -> React Element
```


#### `iframe`

``` purescript
iframe :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `iframe'`

``` purescript
iframe' :: Elements -> React Element
```


#### `img`

``` purescript
img :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `img'`

``` purescript
img' :: Elements -> React Element
```


#### `input`

``` purescript
input :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `input'`

``` purescript
input' :: Elements -> React Element
```


#### `ins`

``` purescript
ins :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `ins'`

``` purescript
ins' :: Elements -> React Element
```


#### `kbd`

``` purescript
kbd :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `kbd'`

``` purescript
kbd' :: Elements -> React Element
```


#### `keygen`

``` purescript
keygen :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `keygen'`

``` purescript
keygen' :: Elements -> React Element
```


#### `label`

``` purescript
label :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `label'`

``` purescript
label' :: Elements -> React Element
```


#### `legend`

``` purescript
legend :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `legend'`

``` purescript
legend' :: Elements -> React Element
```


#### `li`

``` purescript
li :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `li'`

``` purescript
li' :: Elements -> React Element
```


#### `line`

``` purescript
line :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `line'`

``` purescript
line' :: Elements -> React Element
```


#### `linearGradient`

``` purescript
linearGradient :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `linearGradient'`

``` purescript
linearGradient' :: Elements -> React Element
```


#### `link`

``` purescript
link :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `link'`

``` purescript
link' :: Elements -> React Element
```


#### `main`

``` purescript
main :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `main'`

``` purescript
main' :: Elements -> React Element
```


#### `map`

``` purescript
map :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `map'`

``` purescript
map' :: Elements -> React Element
```


#### `mark`

``` purescript
mark :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `mark'`

``` purescript
mark' :: Elements -> React Element
```


#### `mask`

``` purescript
mask :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `mask'`

``` purescript
mask' :: Elements -> React Element
```


#### `menu`

``` purescript
menu :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `menu'`

``` purescript
menu' :: Elements -> React Element
```


#### `menuitem`

``` purescript
menuitem :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `menuitem'`

``` purescript
menuitem' :: Elements -> React Element
```


#### `meta`

``` purescript
meta :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `meta'`

``` purescript
meta' :: Elements -> React Element
```


#### `meter`

``` purescript
meter :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `meter'`

``` purescript
meter' :: Elements -> React Element
```


#### `nav`

``` purescript
nav :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `nav'`

``` purescript
nav' :: Elements -> React Element
```


#### `noscript`

``` purescript
noscript :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `noscript'`

``` purescript
noscript' :: Elements -> React Element
```


#### `object`

``` purescript
object :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `object'`

``` purescript
object' :: Elements -> React Element
```


#### `ol`

``` purescript
ol :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `ol'`

``` purescript
ol' :: Elements -> React Element
```


#### `optgroup`

``` purescript
optgroup :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `optgroup'`

``` purescript
optgroup' :: Elements -> React Element
```


#### `option`

``` purescript
option :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `option'`

``` purescript
option' :: Elements -> React Element
```


#### `output`

``` purescript
output :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `output'`

``` purescript
output' :: Elements -> React Element
```


#### `p`

``` purescript
p :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `p'`

``` purescript
p' :: Elements -> React Element
```


#### `param`

``` purescript
param :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `param'`

``` purescript
param' :: Elements -> React Element
```


#### `path`

``` purescript
path :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `path'`

``` purescript
path' :: Elements -> React Element
```


#### `pattern`

``` purescript
pattern :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `pattern'`

``` purescript
pattern' :: Elements -> React Element
```


#### `picture`

``` purescript
picture :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `picture'`

``` purescript
picture' :: Elements -> React Element
```


#### `polygon`

``` purescript
polygon :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `polygon'`

``` purescript
polygon' :: Elements -> React Element
```


#### `polyline`

``` purescript
polyline :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `polyline'`

``` purescript
polyline' :: Elements -> React Element
```


#### `pre`

``` purescript
pre :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `pre'`

``` purescript
pre' :: Elements -> React Element
```


#### `progress`

``` purescript
progress :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `progress'`

``` purescript
progress' :: Elements -> React Element
```


#### `q`

``` purescript
q :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `q'`

``` purescript
q' :: Elements -> React Element
```


#### `radialGradient`

``` purescript
radialGradient :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `radialGradient'`

``` purescript
radialGradient' :: Elements -> React Element
```


#### `rect`

``` purescript
rect :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `rect'`

``` purescript
rect' :: Elements -> React Element
```


#### `rp`

``` purescript
rp :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `rp'`

``` purescript
rp' :: Elements -> React Element
```


#### `rt`

``` purescript
rt :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `rt'`

``` purescript
rt' :: Elements -> React Element
```


#### `ruby`

``` purescript
ruby :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `ruby'`

``` purescript
ruby' :: Elements -> React Element
```


#### `s`

``` purescript
s :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `s'`

``` purescript
s' :: Elements -> React Element
```


#### `samp`

``` purescript
samp :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `samp'`

``` purescript
samp' :: Elements -> React Element
```


#### `script`

``` purescript
script :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `script'`

``` purescript
script' :: Elements -> React Element
```


#### `section`

``` purescript
section :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `section'`

``` purescript
section' :: Elements -> React Element
```


#### `select`

``` purescript
select :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `select'`

``` purescript
select' :: Elements -> React Element
```


#### `small`

``` purescript
small :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `small'`

``` purescript
small' :: Elements -> React Element
```


#### `source`

``` purescript
source :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `source'`

``` purescript
source' :: Elements -> React Element
```


#### `span`

``` purescript
span :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `span'`

``` purescript
span' :: Elements -> React Element
```


#### `stop`

``` purescript
stop :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `stop'`

``` purescript
stop' :: Elements -> React Element
```


#### `strong`

``` purescript
strong :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `strong'`

``` purescript
strong' :: Elements -> React Element
```


#### `style`

``` purescript
style :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `style'`

``` purescript
style' :: Elements -> React Element
```


#### `sub`

``` purescript
sub :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `sub'`

``` purescript
sub' :: Elements -> React Element
```


#### `summary`

``` purescript
summary :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `summary'`

``` purescript
summary' :: Elements -> React Element
```


#### `sup`

``` purescript
sup :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `sup'`

``` purescript
sup' :: Elements -> React Element
```


#### `svg`

``` purescript
svg :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `svg'`

``` purescript
svg' :: Elements -> React Element
```


#### `table`

``` purescript
table :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `table'`

``` purescript
table' :: Elements -> React Element
```


#### `tbody`

``` purescript
tbody :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `tbody'`

``` purescript
tbody' :: Elements -> React Element
```


#### `td`

``` purescript
td :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `td'`

``` purescript
td' :: Elements -> React Element
```


#### `text`

``` purescript
text :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `text'`

``` purescript
text' :: Elements -> React Element
```


#### `textarea`

``` purescript
textarea :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `textarea'`

``` purescript
textarea' :: Elements -> React Element
```


#### `tfoot`

``` purescript
tfoot :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `tfoot'`

``` purescript
tfoot' :: Elements -> React Element
```


#### `th`

``` purescript
th :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `th'`

``` purescript
th' :: Elements -> React Element
```


#### `thead`

``` purescript
thead :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `thead'`

``` purescript
thead' :: Elements -> React Element
```


#### `time`

``` purescript
time :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `time'`

``` purescript
time' :: Elements -> React Element
```


#### `title`

``` purescript
title :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `title'`

``` purescript
title' :: Elements -> React Element
```


#### `tr`

``` purescript
tr :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `tr'`

``` purescript
tr' :: Elements -> React Element
```


#### `track`

``` purescript
track :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `track'`

``` purescript
track' :: Elements -> React Element
```


#### `tspan`

``` purescript
tspan :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `tspan'`

``` purescript
tspan' :: Elements -> React Element
```


#### `u`

``` purescript
u :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `u'`

``` purescript
u' :: Elements -> React Element
```


#### `ul`

``` purescript
ul :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `ul'`

``` purescript
ul' :: Elements -> React Element
```


#### `var`

``` purescript
var :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `var'`

``` purescript
var' :: Elements -> React Element
```


#### `video`

``` purescript
video :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `video'`

``` purescript
video' :: Elements -> React Element
```


#### `wbr`

``` purescript
wbr :: forall eff. Attributes -> Events eff -> Elements -> React Element
```


#### `wbr'`

``` purescript
wbr' :: Elements -> React Element
```



## Module React.Events

#### `Events`

``` purescript
type Events eff = Options (EventName eff)
```


#### `EventName`

``` purescript
data EventName :: # ! -> *
```


#### `SyntheticEventRecord`

``` purescript
type SyntheticEventRecord event = { "type" :: String, timeStamp :: Number, target :: DOMEventTarget, stopPropagation :: EffApplyFn0 Unit, preventDefault :: EffApplyFn0 Unit, nativeEvent :: DOMEvent, isTrusted :: Boolean, eventPhase :: Number, defaultPrevented :: Boolean, currentTarget :: DOMEventTarget, cancelable :: Boolean, bubbles :: Boolean | event }
```


#### `SyntheticEvent`

``` purescript
newtype SyntheticEvent
  = SyntheticEvent (SyntheticEventRecord ())
```


#### `SyntheticClipboardEvent`

``` purescript
newtype SyntheticClipboardEvent
  = SyntheticClipboardEvent (SyntheticEventRecord (clipboardData :: DOMDataTransfer))
```


#### `SyntheticCompositionEvent`

``` purescript
newtype SyntheticCompositionEvent
  = SyntheticCompositionEvent (SyntheticEventRecord ("data" :: DOMString))
```


#### `SyntheticDragEvent`

``` purescript
newtype SyntheticDragEvent
  = SyntheticDragEvent (SyntheticEventRecord (dataTransfer :: DOMDataTransfer))
```


#### `SyntheticKeyboardEvent`

``` purescript
newtype SyntheticKeyboardEvent
  = SyntheticKeyboardEvent (SyntheticEventRecord (which :: Number, shiftKey :: Boolean, repeat :: Boolean, metaKey :: Boolean, location :: Number, locale :: String, keyCode :: Number, key :: String, getModifierState :: String -> Boolean, ctrlKey :: Boolean, charCode :: Number, altKey :: Boolean))
```


#### `SyntheticFocusEvent`

``` purescript
newtype SyntheticFocusEvent
  = SyntheticFocusEvent (SyntheticEventRecord (relatedTarget :: DOMEventTarget))
```


#### `SyntheticInputEvent`

``` purescript
newtype SyntheticInputEvent
  = SyntheticInputEvent (SyntheticEventRecord ())
```


#### `SyntheticMouseEvent`

``` purescript
newtype SyntheticMouseEvent
  = SyntheticMouseEvent (SyntheticEventRecord (shiftKey :: Boolean, screenY :: Number, screenX :: Number, relatedTarget :: DOMEventTarget, pageY :: Number, pageX :: Number, metaKey :: Boolean, getModifierState :: String -> Boolean, ctrlKey :: Boolean, clientY :: Number, clientX :: Number, buttons :: Number, button :: Number, altKey :: Boolean))
```


#### `SyntheticTouchEvent`

``` purescript
newtype SyntheticTouchEvent
  = SyntheticTouchEvent (SyntheticEventRecord (touches :: DOMTouchList, targetTouches :: DOMTouchList, shiftKey :: Boolean, metaKey :: Boolean, getModifierState :: String -> Boolean, ctrlKey :: Boolean, changedTouches :: DOMTouchList, altKey :: Boolean))
```


#### `SyntheticUIEvent`

``` purescript
newtype SyntheticUIEvent
  = SyntheticUIEvent (SyntheticEventRecord (view :: DOMAbstractView, detail :: Number))
```


#### `SyntheticWheelEvent`

``` purescript
newtype SyntheticWheelEvent
  = SyntheticWheelEvent (SyntheticEventRecord (deltaZ :: Number, deltaY :: Number, deltaX :: Number, deltaMode :: Number, detail :: Number))
```


#### `SyntheticEventFn`

``` purescript
newtype SyntheticEventFn eff
  = SyntheticEventFn (SyntheticEvent -> Component eff Unit)
```


#### `SyntheticClipboardEventFn`

``` purescript
newtype SyntheticClipboardEventFn eff
  = SyntheticClipboardEventFn (SyntheticClipboardEvent -> Component eff Unit)
```


#### `SyntheticCompositionEventFn`

``` purescript
newtype SyntheticCompositionEventFn eff
  = SyntheticCompositionEventFn (SyntheticCompositionEvent -> Component eff Unit)
```


#### `SyntheticDragEventFn`

``` purescript
newtype SyntheticDragEventFn eff
  = SyntheticDragEventFn (SyntheticDragEvent -> Component eff Unit)
```


#### `SyntheticKeyboardEventFn`

``` purescript
newtype SyntheticKeyboardEventFn eff
  = SyntheticKeyboardEventFn (SyntheticKeyboardEvent -> Component eff Unit)
```


#### `SyntheticFocusEventFn`

``` purescript
newtype SyntheticFocusEventFn eff
  = SyntheticFocusEventFn (SyntheticFocusEvent -> Component eff Unit)
```


#### `SyntheticInputEventFn`

``` purescript
newtype SyntheticInputEventFn eff
  = SyntheticInputEventFn (SyntheticInputEvent -> Component eff Unit)
```


#### `SyntheticMouseEventFn`

``` purescript
newtype SyntheticMouseEventFn eff
  = SyntheticMouseEventFn (SyntheticMouseEvent -> Component eff Unit)
```


#### `SyntheticTouchEventFn`

``` purescript
newtype SyntheticTouchEventFn eff
  = SyntheticTouchEventFn (SyntheticTouchEvent -> Component eff Unit)
```


#### `SyntheticUIEventFn`

``` purescript
newtype SyntheticUIEventFn eff
  = SyntheticUIEventFn (SyntheticUIEvent -> Component eff Unit)
```


#### `SyntheticWheelEventFn`

``` purescript
newtype SyntheticWheelEventFn eff
  = SyntheticWheelEventFn (SyntheticWheelEvent -> Component eff Unit)
```


#### `isOptionSyntheticEventFn`

``` purescript
instance isOptionSyntheticEventFn :: IsOption (SyntheticEventFn eff)
```


#### `isOptionSyntheticClipboardEventFn`

``` purescript
instance isOptionSyntheticClipboardEventFn :: IsOption (SyntheticClipboardEventFn eff)
```


#### `isOptionSyntheticCompositionEventFn`

``` purescript
instance isOptionSyntheticCompositionEventFn :: IsOption (SyntheticCompositionEventFn eff)
```


#### `isOptionSyntheticDragEventFn`

``` purescript
instance isOptionSyntheticDragEventFn :: IsOption (SyntheticDragEventFn eff)
```


#### `isOptionSyntheticKeyboardEventFn`

``` purescript
instance isOptionSyntheticKeyboardEventFn :: IsOption (SyntheticKeyboardEventFn eff)
```


#### `isOptionSyntheticFocusEventFn`

``` purescript
instance isOptionSyntheticFocusEventFn :: IsOption (SyntheticFocusEventFn eff)
```


#### `isOptionSyntheticInputEventFn`

``` purescript
instance isOptionSyntheticInputEventFn :: IsOption (SyntheticInputEventFn eff)
```


#### `isOptionSyntheticMouseEventFn`

``` purescript
instance isOptionSyntheticMouseEventFn :: IsOption (SyntheticMouseEventFn eff)
```


#### `isOptionSyntheticTouchEventFn`

``` purescript
instance isOptionSyntheticTouchEventFn :: IsOption (SyntheticTouchEventFn eff)
```


#### `isOptionSyntheticUIEventFn`

``` purescript
instance isOptionSyntheticUIEventFn :: IsOption (SyntheticUIEventFn eff)
```


#### `isOptionSyntheticWheelEventFn`

``` purescript
instance isOptionSyntheticWheelEventFn :: IsOption (SyntheticWheelEventFn eff)
```


#### `effApplyFnsSyntheticEvent`

``` purescript
instance effApplyFnsSyntheticEvent :: EffApplyFns SyntheticEvent
```


#### `effApplyFnsSyntheticClipboardEvent`

``` purescript
instance effApplyFnsSyntheticClipboardEvent :: EffApplyFns SyntheticClipboardEvent
```


#### `effApplyFnsSyntheticCompositionEvent`

``` purescript
instance effApplyFnsSyntheticCompositionEvent :: EffApplyFns SyntheticCompositionEvent
```


#### `effApplyFnsSyntheticDragEvent`

``` purescript
instance effApplyFnsSyntheticDragEvent :: EffApplyFns SyntheticDragEvent
```


#### `effApplyFnsSyntheticKeyboardEvent`

``` purescript
instance effApplyFnsSyntheticKeyboardEvent :: EffApplyFns SyntheticKeyboardEvent
```


#### `effApplyFnsSyntheticFocusEvent`

``` purescript
instance effApplyFnsSyntheticFocusEvent :: EffApplyFns SyntheticFocusEvent
```


#### `effApplyFnsSyntheticInputEvent`

``` purescript
instance effApplyFnsSyntheticInputEvent :: EffApplyFns SyntheticInputEvent
```


#### `effApplyFnsSyntheticMouseEvent`

``` purescript
instance effApplyFnsSyntheticMouseEvent :: EffApplyFns SyntheticMouseEvent
```


#### `effApplyFnsSyntheticTouchEvent`

``` purescript
instance effApplyFnsSyntheticTouchEvent :: EffApplyFns SyntheticTouchEvent
```


#### `effApplyFnsSyntheticUIEvent`

``` purescript
instance effApplyFnsSyntheticUIEvent :: EffApplyFns SyntheticUIEvent
```


#### `effApplyFnsSyntheticWheelEvent`

``` purescript
instance effApplyFnsSyntheticWheelEvent :: EffApplyFns SyntheticWheelEvent
```


#### `onError`

``` purescript
onError :: forall eff. Option (EventName eff) (SyntheticEventFn eff)
```


#### `onErrorCapture`

``` purescript
onErrorCapture :: forall eff. Option (EventName eff) (SyntheticEventFn eff)
```


#### `onInput`

``` purescript
onInput :: forall eff. Option (EventName eff) (SyntheticEventFn eff)
```


#### `onInputCapture`

``` purescript
onInputCapture :: forall eff. Option (EventName eff) (SyntheticEventFn eff)
```


#### `onLoad`

``` purescript
onLoad :: forall eff. Option (EventName eff) (SyntheticEventFn eff)
```


#### `onLoadCapture`

``` purescript
onLoadCapture :: forall eff. Option (EventName eff) (SyntheticEventFn eff)
```


#### `onReset`

``` purescript
onReset :: forall eff. Option (EventName eff) (SyntheticEventFn eff)
```


#### `onResetCapture`

``` purescript
onResetCapture :: forall eff. Option (EventName eff) (SyntheticEventFn eff)
```


#### `onSubmit`

``` purescript
onSubmit :: forall eff. Option (EventName eff) (SyntheticEventFn eff)
```


#### `onSubmitCapture`

``` purescript
onSubmitCapture :: forall eff. Option (EventName eff) (SyntheticEventFn eff)
```


#### `onCopy`

``` purescript
onCopy :: forall eff. Option (EventName eff) (SyntheticClipboardEventFn eff)
```


#### `onCopyCapture`

``` purescript
onCopyCapture :: forall eff. Option (EventName eff) (SyntheticClipboardEventFn eff)
```


#### `onCut`

``` purescript
onCut :: forall eff. Option (EventName eff) (SyntheticClipboardEventFn eff)
```


#### `onCutCapture`

``` purescript
onCutCapture :: forall eff. Option (EventName eff) (SyntheticClipboardEventFn eff)
```


#### `onPaste`

``` purescript
onPaste :: forall eff. Option (EventName eff) (SyntheticClipboardEventFn eff)
```


#### `onPasteCapture`

``` purescript
onPasteCapture :: forall eff. Option (EventName eff) (SyntheticClipboardEventFn eff)
```


#### `onDrag`

``` purescript
onDrag :: forall eff. Option (EventName eff) (SyntheticDragEventFn eff)
```


#### `onDragCapture`

``` purescript
onDragCapture :: forall eff. Option (EventName eff) (SyntheticDragEventFn eff)
```


#### `onDragEnd`

``` purescript
onDragEnd :: forall eff. Option (EventName eff) (SyntheticDragEventFn eff)
```


#### `onDragEndCapture`

``` purescript
onDragEndCapture :: forall eff. Option (EventName eff) (SyntheticDragEventFn eff)
```


#### `onDragEnter`

``` purescript
onDragEnter :: forall eff. Option (EventName eff) (SyntheticDragEventFn eff)
```


#### `onDragEnterCapture`

``` purescript
onDragEnterCapture :: forall eff. Option (EventName eff) (SyntheticDragEventFn eff)
```


#### `onDragExit`

``` purescript
onDragExit :: forall eff. Option (EventName eff) (SyntheticDragEventFn eff)
```


#### `onDragExitCapture`

``` purescript
onDragExitCapture :: forall eff. Option (EventName eff) (SyntheticDragEventFn eff)
```


#### `onDragLeave`

``` purescript
onDragLeave :: forall eff. Option (EventName eff) (SyntheticDragEventFn eff)
```


#### `onDragLeaveCapture`

``` purescript
onDragLeaveCapture :: forall eff. Option (EventName eff) (SyntheticDragEventFn eff)
```


#### `onDragOver`

``` purescript
onDragOver :: forall eff. Option (EventName eff) (SyntheticDragEventFn eff)
```


#### `onDragOverCapture`

``` purescript
onDragOverCapture :: forall eff. Option (EventName eff) (SyntheticDragEventFn eff)
```


#### `onDragStart`

``` purescript
onDragStart :: forall eff. Option (EventName eff) (SyntheticDragEventFn eff)
```


#### `onDragStartCapture`

``` purescript
onDragStartCapture :: forall eff. Option (EventName eff) (SyntheticDragEventFn eff)
```


#### `onDrop`

``` purescript
onDrop :: forall eff. Option (EventName eff) (SyntheticDragEventFn eff)
```


#### `onDropCapture`

``` purescript
onDropCapture :: forall eff. Option (EventName eff) (SyntheticDragEventFn eff)
```


#### `onFocus`

``` purescript
onFocus :: forall eff. Option (EventName eff) (SyntheticFocusEventFn eff)
```


#### `onFocusCapture`

``` purescript
onFocusCapture :: forall eff. Option (EventName eff) (SyntheticFocusEventFn eff)
```


#### `onBlur`

``` purescript
onBlur :: forall eff. Option (EventName eff) (SyntheticFocusEventFn eff)
```


#### `onBlurCapture`

``` purescript
onBlurCapture :: forall eff. Option (EventName eff) (SyntheticFocusEventFn eff)
```


#### `onChange`

``` purescript
onChange :: forall eff. Option (EventName eff) (SyntheticInputEventFn eff)
```


#### `onChangeCapture`

``` purescript
onChangeCapture :: forall eff. Option (EventName eff) (SyntheticInputEventFn eff)
```


#### `onKeyDown`

``` purescript
onKeyDown :: forall eff. Option (EventName eff) (SyntheticKeyboardEventFn eff)
```


#### `onKeyDownCapture`

``` purescript
onKeyDownCapture :: forall eff. Option (EventName eff) (SyntheticKeyboardEventFn eff)
```


#### `onKeyPress`

``` purescript
onKeyPress :: forall eff. Option (EventName eff) (SyntheticKeyboardEventFn eff)
```


#### `onKeyPressCapture`

``` purescript
onKeyPressCapture :: forall eff. Option (EventName eff) (SyntheticKeyboardEventFn eff)
```


#### `onKeyUp`

``` purescript
onKeyUp :: forall eff. Option (EventName eff) (SyntheticKeyboardEventFn eff)
```


#### `onKeyUpCapture`

``` purescript
onKeyUpCapture :: forall eff. Option (EventName eff) (SyntheticKeyboardEventFn eff)
```


#### `onClick`

``` purescript
onClick :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
```


#### `onClickCapture`

``` purescript
onClickCapture :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
```


#### `onContextMenu`

``` purescript
onContextMenu :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
```


#### `onContextMenuCapture`

``` purescript
onContextMenuCapture :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
```


#### `onDoubleClick`

``` purescript
onDoubleClick :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
```


#### `onDoubleClickCapture`

``` purescript
onDoubleClickCapture :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
```


#### `onMouseDown`

``` purescript
onMouseDown :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
```


#### `onMouseDownCapture`

``` purescript
onMouseDownCapture :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
```


#### `onMouseEnter`

``` purescript
onMouseEnter :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
```


#### `onMouseEnterCapture`

``` purescript
onMouseEnterCapture :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
```


#### `onMouseLeave`

``` purescript
onMouseLeave :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
```


#### `onMouseLeaveCapture`

``` purescript
onMouseLeaveCapture :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
```


#### `onMouseMove`

``` purescript
onMouseMove :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
```


#### `onMouseMoveCapture`

``` purescript
onMouseMoveCapture :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
```


#### `onMouseOut`

``` purescript
onMouseOut :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
```


#### `onMouseOutCapture`

``` purescript
onMouseOutCapture :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
```


#### `onMouseOver`

``` purescript
onMouseOver :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
```


#### `onMouseOverCapture`

``` purescript
onMouseOverCapture :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
```


#### `onMouseUp`

``` purescript
onMouseUp :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
```


#### `onMouseUpCapture`

``` purescript
onMouseUpCapture :: forall eff. Option (EventName eff) (SyntheticMouseEventFn eff)
```


#### `onTouchCancel`

``` purescript
onTouchCancel :: forall eff. Option (EventName eff) (SyntheticTouchEventFn eff)
```


#### `onTouchCancelCapture`

``` purescript
onTouchCancelCapture :: forall eff. Option (EventName eff) (SyntheticTouchEventFn eff)
```


#### `onTouchEnd`

``` purescript
onTouchEnd :: forall eff. Option (EventName eff) (SyntheticTouchEventFn eff)
```


#### `onTouchEndCapture`

``` purescript
onTouchEndCapture :: forall eff. Option (EventName eff) (SyntheticTouchEventFn eff)
```


#### `onTouchMove`

``` purescript
onTouchMove :: forall eff. Option (EventName eff) (SyntheticTouchEventFn eff)
```


#### `onTouchMoveCapture`

``` purescript
onTouchMoveCapture :: forall eff. Option (EventName eff) (SyntheticTouchEventFn eff)
```


#### `onTouchStart`

``` purescript
onTouchStart :: forall eff. Option (EventName eff) (SyntheticTouchEventFn eff)
```


#### `onTouchStartCapture`

``` purescript
onTouchStartCapture :: forall eff. Option (EventName eff) (SyntheticTouchEventFn eff)
```


#### `onScroll`

``` purescript
onScroll :: forall eff. Option (EventName eff) (SyntheticUIEventFn eff)
```


#### `onScrollCapture`

``` purescript
onScrollCapture :: forall eff. Option (EventName eff) (SyntheticUIEventFn eff)
```


#### `onWheel`

``` purescript
onWheel :: forall eff. Option (EventName eff) (SyntheticWheelEventFn eff)
```


#### `onWheelCapture`

``` purescript
onWheelCapture :: forall eff. Option (EventName eff) (SyntheticWheelEventFn eff)
```



## Module React.ReactF

#### `DisplayName`

``` purescript
type DisplayName = String
```


#### `Class`

``` purescript
data Class props state
```


#### `Element`

``` purescript
data Element
```


#### `Elements`

``` purescript
type Elements = [Element]
```


#### `RenderFn`

``` purescript
type RenderFn props state = Reference props state -> Props props -> State state -> React Element
```


#### `PureRenderFn`

``` purescript
type PureRenderFn props = Props props -> React Element
```


#### `LifecycleFn0`

``` purescript
type LifecycleFn0 eff props state a = Reference props state -> Component eff a
```


#### `LifecycleFn1`

``` purescript
type LifecycleFn1 eff props state a = Reference props state -> Props props -> Component eff a
```


#### `LifecycleFn2`

``` purescript
type LifecycleFn2 eff props state a = Reference props state -> Props props -> State state -> Component eff a
```


#### `ComponentWillMount`

``` purescript
type ComponentWillMount eff props state = LifecycleFn0 eff props state Unit
```


#### `ComponentDidMount`

``` purescript
type ComponentDidMount eff props state = LifecycleFn0 eff props state Unit
```


#### `ComponentWillReceiveProps`

``` purescript
type ComponentWillReceiveProps eff props state = LifecycleFn1 eff props state Unit
```


#### `ShouldComponentUpdate`

``` purescript
type ShouldComponentUpdate eff props state = LifecycleFn2 eff props state Boolean
```


#### `ComponentWillUpdate`

``` purescript
type ComponentWillUpdate eff props state = LifecycleFn2 eff props state Unit
```


#### `ComponentDidUpdate`

``` purescript
type ComponentDidUpdate eff props state = LifecycleFn2 eff props state Unit
```


#### `ComponentWillUnmount`

``` purescript
type ComponentWillUnmount eff props state = LifecycleFn0 eff props state Unit
```


#### `PureSpec`

``` purescript
type PureSpec props = { displayName :: DisplayName, getDefaultProps :: Props props, render :: PureRenderFn props }
```


#### `ImpureSpec`

``` purescript
type ImpureSpec eff props state = { componentWillUnmount :: ComponentWillUnmount eff props state, componentDidUpdate :: ComponentDidUpdate eff props state, componentWillUpdate :: ComponentWillUpdate eff props state, shouldComponentUpdate :: ShouldComponentUpdate eff props state, componentWillReceiveProps :: ComponentWillReceiveProps eff props state, componentDidMount :: ComponentDidMount eff props state, componentWillMount :: ComponentWillMount eff props state, displayName :: DisplayName, getDefaultProps :: Props props, getInitialState :: State state, render :: RenderFn props state }
```


#### `Specification`

``` purescript
data Specification eff props state
  = PureSpecification (PureSpec props)
  | ImpureSpecification (ImpureSpec eff props state)
```


#### `React`

``` purescript
type React = FreeC ReactF
```


#### `ReactF`

``` purescript
data ReactF a
  = CreateClass (forall eff props state. Specification eff props state) (forall props state. Class props state -> a)
  | CreateElementFromClass (forall props state. Class props state) (forall props. Props props) (forall eff. Events eff) Elements (Element -> a)
  | CreateElementFromTagName TagName Attributes (forall eff. Events eff) Elements (Element -> a)
  | RenderSync Element DOMElement (forall props state. Reference props state -> a)
  | RenderAsync Element DOMElement (forall props state. Reference props state -> a)
```


#### `createClass`

``` purescript
createClass :: forall eff props state. Specification eff props state -> React (Class props state)
```


#### `createElementFromClass`

``` purescript
createElementFromClass :: forall eff props state. Class props state -> Props props -> Events eff -> Elements -> React Element
```


#### `createElementFromTagName`

``` purescript
createElementFromTagName :: forall eff props state. TagName -> Attributes -> Events eff -> Elements -> React Element
```


#### `renderSync`

``` purescript
renderSync :: forall props spec. Element -> DOMElement -> React (Reference props spec)
```


#### `renderAsync`

``` purescript
renderAsync :: forall props spec. Element -> DOMElement -> React (Reference props spec)
```



## Module React.ReactI

#### `ReactJsImport`

``` purescript
data ReactJsImport
```


#### `ReactJs`

``` purescript
data ReactJs
  = ReactJs ReactJsImport
  | ReactJsAddons ReactJsImport
```


#### `run`

``` purescript
run :: forall a. ReactJs -> React a -> Eff (react :: ReactE) a
```



## Module React.Spec

#### `impureSpec`

``` purescript
impureSpec :: forall eff props state. Props props -> State state -> RenderFn props state -> Specification eff props state
```


#### `pureSpec`

``` purescript
pureSpec :: forall props. Props props -> PureRenderFn props -> Specification _ props _
```


#### `setDisplayName`

``` purescript
setDisplayName :: forall eff props state. SetterP (Specification eff props state) String
```


#### `setComponentWillMount`

``` purescript
setComponentWillMount :: forall eff props state. SetterP (Specification eff props state) (ComponentWillMount eff props state)
```


#### `setComponentDidMount`

``` purescript
setComponentDidMount :: forall eff props state. SetterP (Specification eff props state) (ComponentDidMount eff props state)
```


#### `setComponentWillReceiveProps`

``` purescript
setComponentWillReceiveProps :: forall eff props state. SetterP (Specification eff props state) (ComponentWillReceiveProps eff props state)
```


#### `setShouldComponentUpdate`

``` purescript
setShouldComponentUpdate :: forall eff props state. SetterP (Specification eff props state) (ShouldComponentUpdate eff props state)
```


#### `setComponentWillUpdate`

``` purescript
setComponentWillUpdate :: forall eff props state. SetterP (Specification eff props state) (ComponentWillUpdate eff props state)
```


#### `setComponentDidUpdate`

``` purescript
setComponentDidUpdate :: forall eff props state. SetterP (Specification eff props state) (ComponentDidUpdate eff props state)
```


#### `setComponentWillUnmount`

``` purescript
setComponentWillUnmount :: forall eff props state. SetterP (Specification eff props state) (ComponentWillUnmount eff props state)
```



## Module React.TagName

#### `TagName`

``` purescript
data TagName
  = Null 
  | Raw 
  | A 
  | Abbr 
  | Address 
  | Area 
  | Article 
  | Aside 
  | Audio 
  | B 
  | Base 
  | Bdi 
  | Bdo 
  | Big 
  | Blockquote 
  | Body 
  | Br 
  | Button 
  | Canvas 
  | Caption 
  | Circle 
  | Cite 
  | Code 
  | Col 
  | Colgroup 
  | Data 
  | Datalist 
  | Dd 
  | Defs 
  | Del 
  | Details 
  | Dfn 
  | Dialog 
  | Div 
  | Dl 
  | Dt 
  | Ellipse 
  | Em 
  | Embed 
  | Fieldset 
  | Figcaption 
  | Figure 
  | Footer 
  | Form 
  | G 
  | H1 
  | H2 
  | H3 
  | H4 
  | H5 
  | H6 
  | Head 
  | Header 
  | Hr 
  | Html 
  | I 
  | Iframe 
  | Img 
  | Input 
  | Ins 
  | Kbd 
  | Keygen 
  | Label 
  | Legend 
  | Li 
  | Line 
  | LinearGradient 
  | Link 
  | Main 
  | Map 
  | Mark 
  | Mask 
  | Menu 
  | Menuitem 
  | Meta 
  | Meter 
  | Nav 
  | Noscript 
  | Object 
  | Ol 
  | Optgroup 
  | Option 
  | Output 
  | P 
  | Param 
  | Path 
  | Pattern 
  | Picture 
  | Polygon 
  | Polyline 
  | Pre 
  | Progress 
  | Q 
  | RadialGradient 
  | Rect 
  | Rp 
  | Rt 
  | Ruby 
  | S 
  | Samp 
  | Script 
  | Section 
  | Select 
  | Small 
  | Source 
  | Span 
  | Stop 
  | Strong 
  | Style 
  | Sub 
  | Summary 
  | Sup 
  | Svg 
  | Table 
  | Tbody 
  | Td 
  | Text 
  | Textarea 
  | Tfoot 
  | Th 
  | Thead 
  | Time 
  | Title 
  | Tr 
  | Track 
  | Tspan 
  | U 
  | Ul 
  | Var 
  | Video 
  | Wbr 
```


#### `showTagName`

``` purescript
instance showTagName :: Show TagName
```



## Module React.Types

#### `DOMAbstractView`

``` purescript
data DOMAbstractView
```


#### `DOMElement`

``` purescript
data DOMElement
```


#### `DOMEvent`

``` purescript
data DOMEvent
```


#### `DOMEventTarget`

``` purescript
data DOMEventTarget
```


#### `DOMDataTransfer`

``` purescript
data DOMDataTransfer
```


#### `DOMTouchList`

``` purescript
data DOMTouchList
```


#### `DOMString`

``` purescript
data DOMString
```


#### `EffApplyFn0`

``` purescript
data EffApplyFn0 ret
```


#### `EffApplyFns`

``` purescript
class EffApplyFns a where
  effApplyFn0 :: forall eff ret. EffApplyFn0 ret -> a -> Eff (dom :: DOM | eff) ret
```


#### `effApplyFn0Fn`

``` purescript
effApplyFn0Fn :: forall eff ret a. Fn2 (EffApplyFn0 ret) a (Eff (dom :: DOM | eff) ret)
```


#### `ReactE`

``` purescript
data ReactE :: !
```




