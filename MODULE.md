# Module Documentation

## Module React.Attributes

#### `Attributes`

``` purescript
newtype Attributes
  = Attributes (Options Attribute)
```


#### `semigroupAttributes`

``` purescript
instance semigroupAttributes :: Semigroup Attributes
```


#### `monoidAttributes`

``` purescript
instance monoidAttributes :: Monoid Attributes
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
_data :: forall a. String -> Option Attribute a
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
style :: forall a. Option Attribute {  | a }
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

#### `(|-)`

``` purescript
(|-) :: (Elements -> React Element) -> React Element -> React Element
```


#### `(|*)`

``` purescript
(|*) :: (Elements -> React Element) -> [React Element] -> React Element
```


#### `child`

``` purescript
child :: (Elements -> React Element) -> React Element -> React Element
```


#### `children`

``` purescript
children :: (Elements -> React Element) -> [React Element] -> React Element
```



## Module React.ComponentF

#### `Component`

``` purescript
type Component props state = FreeC (ComponentF props state)
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
data ComponentF props state a
  = GetProps (Reference props state) (Props props -> a)
  | GetState (Reference props state) (State state -> a)
  | SetStateSync (Reference props state) (State state) a
  | SetStateAsync (Reference props state) (State state) a
```


#### `getState`

``` purescript
getState :: forall props state. Reference props state -> Component props state (State state)
```


#### `setStateSync`

``` purescript
setStateSync :: forall props state. Reference props state -> State state -> Component props state Unit
```


#### `setStateAsync`

``` purescript
setStateAsync :: forall props state. Reference props state -> State state -> Component props state Unit
```



## Module React.ComponentI

#### `run`

``` purescript
run :: forall props state a. Component props state a -> Eff (react :: ReactE) a
```



## Module React.Dom

#### `null`

``` purescript
null :: React Element
```


#### `textnode`

``` purescript
textnode :: String -> React Element
```


#### `a`

``` purescript
a :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `a'`

``` purescript
a' :: Elements -> React Element
```


#### `abbr`

``` purescript
abbr :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `abbr'`

``` purescript
abbr' :: Elements -> React Element
```


#### `address`

``` purescript
address :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `address'`

``` purescript
address' :: Elements -> React Element
```


#### `area`

``` purescript
area :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `area'`

``` purescript
area' :: Elements -> React Element
```


#### `article`

``` purescript
article :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `article'`

``` purescript
article' :: Elements -> React Element
```


#### `aside`

``` purescript
aside :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `aside'`

``` purescript
aside' :: Elements -> React Element
```


#### `audio`

``` purescript
audio :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `audio'`

``` purescript
audio' :: Elements -> React Element
```


#### `b`

``` purescript
b :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `b'`

``` purescript
b' :: Elements -> React Element
```


#### `base`

``` purescript
base :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `base'`

``` purescript
base' :: Elements -> React Element
```


#### `bdi`

``` purescript
bdi :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `bdi'`

``` purescript
bdi' :: Elements -> React Element
```


#### `bdo`

``` purescript
bdo :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `bdo'`

``` purescript
bdo' :: Elements -> React Element
```


#### `big`

``` purescript
big :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `big'`

``` purescript
big' :: Elements -> React Element
```


#### `blockquote`

``` purescript
blockquote :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `blockquote'`

``` purescript
blockquote' :: Elements -> React Element
```


#### `body`

``` purescript
body :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `body'`

``` purescript
body' :: Elements -> React Element
```


#### `br`

``` purescript
br :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `br'`

``` purescript
br' :: Elements -> React Element
```


#### `button`

``` purescript
button :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `button'`

``` purescript
button' :: Elements -> React Element
```


#### `canvas`

``` purescript
canvas :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `canvas'`

``` purescript
canvas' :: Elements -> React Element
```


#### `caption`

``` purescript
caption :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `caption'`

``` purescript
caption' :: Elements -> React Element
```


#### `circle`

``` purescript
circle :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `circle'`

``` purescript
circle' :: Elements -> React Element
```


#### `cite`

``` purescript
cite :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `cite'`

``` purescript
cite' :: Elements -> React Element
```


#### `code`

``` purescript
code :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `code'`

``` purescript
code' :: Elements -> React Element
```


#### `col`

``` purescript
col :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `col'`

``` purescript
col' :: Elements -> React Element
```


#### `colgroup`

``` purescript
colgroup :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `colgroup'`

``` purescript
colgroup' :: Elements -> React Element
```


#### `_data`

``` purescript
_data :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `_data'`

``` purescript
_data' :: Elements -> React Element
```


#### `datalist`

``` purescript
datalist :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `datalist'`

``` purescript
datalist' :: Elements -> React Element
```


#### `dd`

``` purescript
dd :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `dd'`

``` purescript
dd' :: Elements -> React Element
```


#### `defs`

``` purescript
defs :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `defs'`

``` purescript
defs' :: Elements -> React Element
```


#### `del`

``` purescript
del :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `del'`

``` purescript
del' :: Elements -> React Element
```


#### `details`

``` purescript
details :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `details'`

``` purescript
details' :: Elements -> React Element
```


#### `dfn`

``` purescript
dfn :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `dfn'`

``` purescript
dfn' :: Elements -> React Element
```


#### `dialog`

``` purescript
dialog :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `dialog'`

``` purescript
dialog' :: Elements -> React Element
```


#### `div`

``` purescript
div :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `div'`

``` purescript
div' :: Elements -> React Element
```


#### `dl`

``` purescript
dl :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `dl'`

``` purescript
dl' :: Elements -> React Element
```


#### `dt`

``` purescript
dt :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `dt'`

``` purescript
dt' :: Elements -> React Element
```


#### `ellipse`

``` purescript
ellipse :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `ellipse'`

``` purescript
ellipse' :: Elements -> React Element
```


#### `em`

``` purescript
em :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `em'`

``` purescript
em' :: Elements -> React Element
```


#### `embed`

``` purescript
embed :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `embed'`

``` purescript
embed' :: Elements -> React Element
```


#### `fieldset`

``` purescript
fieldset :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `fieldset'`

``` purescript
fieldset' :: Elements -> React Element
```


#### `figcaption`

``` purescript
figcaption :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `figcaption'`

``` purescript
figcaption' :: Elements -> React Element
```


#### `figure`

``` purescript
figure :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `figure'`

``` purescript
figure' :: Elements -> React Element
```


#### `footer`

``` purescript
footer :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `footer'`

``` purescript
footer' :: Elements -> React Element
```


#### `form`

``` purescript
form :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `form'`

``` purescript
form' :: Elements -> React Element
```


#### `g`

``` purescript
g :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `g'`

``` purescript
g' :: Elements -> React Element
```


#### `h1`

``` purescript
h1 :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `h1'`

``` purescript
h1' :: Elements -> React Element
```


#### `h2`

``` purescript
h2 :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `h2'`

``` purescript
h2' :: Elements -> React Element
```


#### `h3`

``` purescript
h3 :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `h3'`

``` purescript
h3' :: Elements -> React Element
```


#### `h4`

``` purescript
h4 :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `h4'`

``` purescript
h4' :: Elements -> React Element
```


#### `h5`

``` purescript
h5 :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `h5'`

``` purescript
h5' :: Elements -> React Element
```


#### `h6`

``` purescript
h6 :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `h6'`

``` purescript
h6' :: Elements -> React Element
```


#### `head`

``` purescript
head :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `head'`

``` purescript
head' :: Elements -> React Element
```


#### `header`

``` purescript
header :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `header'`

``` purescript
header' :: Elements -> React Element
```


#### `hr`

``` purescript
hr :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `hr'`

``` purescript
hr' :: Elements -> React Element
```


#### `html`

``` purescript
html :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `html'`

``` purescript
html' :: Elements -> React Element
```


#### `i`

``` purescript
i :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `i'`

``` purescript
i' :: Elements -> React Element
```


#### `iframe`

``` purescript
iframe :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `iframe'`

``` purescript
iframe' :: Elements -> React Element
```


#### `img`

``` purescript
img :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `img'`

``` purescript
img' :: Elements -> React Element
```


#### `input`

``` purescript
input :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `input'`

``` purescript
input' :: Elements -> React Element
```


#### `ins`

``` purescript
ins :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `ins'`

``` purescript
ins' :: Elements -> React Element
```


#### `kbd`

``` purescript
kbd :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `kbd'`

``` purescript
kbd' :: Elements -> React Element
```


#### `keygen`

``` purescript
keygen :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `keygen'`

``` purescript
keygen' :: Elements -> React Element
```


#### `label`

``` purescript
label :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `label'`

``` purescript
label' :: Elements -> React Element
```


#### `legend`

``` purescript
legend :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `legend'`

``` purescript
legend' :: Elements -> React Element
```


#### `li`

``` purescript
li :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `li'`

``` purescript
li' :: Elements -> React Element
```


#### `line`

``` purescript
line :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `line'`

``` purescript
line' :: Elements -> React Element
```


#### `linearGradient`

``` purescript
linearGradient :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `linearGradient'`

``` purescript
linearGradient' :: Elements -> React Element
```


#### `link`

``` purescript
link :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `link'`

``` purescript
link' :: Elements -> React Element
```


#### `main`

``` purescript
main :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `main'`

``` purescript
main' :: Elements -> React Element
```


#### `map`

``` purescript
map :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `map'`

``` purescript
map' :: Elements -> React Element
```


#### `mark`

``` purescript
mark :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `mark'`

``` purescript
mark' :: Elements -> React Element
```


#### `mask`

``` purescript
mask :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `mask'`

``` purescript
mask' :: Elements -> React Element
```


#### `menu`

``` purescript
menu :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `menu'`

``` purescript
menu' :: Elements -> React Element
```


#### `menuitem`

``` purescript
menuitem :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `menuitem'`

``` purescript
menuitem' :: Elements -> React Element
```


#### `meta`

``` purescript
meta :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `meta'`

``` purescript
meta' :: Elements -> React Element
```


#### `meter`

``` purescript
meter :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `meter'`

``` purescript
meter' :: Elements -> React Element
```


#### `nav`

``` purescript
nav :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `nav'`

``` purescript
nav' :: Elements -> React Element
```


#### `noscript`

``` purescript
noscript :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `noscript'`

``` purescript
noscript' :: Elements -> React Element
```


#### `object`

``` purescript
object :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `object'`

``` purescript
object' :: Elements -> React Element
```


#### `ol`

``` purescript
ol :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `ol'`

``` purescript
ol' :: Elements -> React Element
```


#### `optgroup`

``` purescript
optgroup :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `optgroup'`

``` purescript
optgroup' :: Elements -> React Element
```


#### `option`

``` purescript
option :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `option'`

``` purescript
option' :: Elements -> React Element
```


#### `output`

``` purescript
output :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `output'`

``` purescript
output' :: Elements -> React Element
```


#### `p`

``` purescript
p :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `p'`

``` purescript
p' :: Elements -> React Element
```


#### `param`

``` purescript
param :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `param'`

``` purescript
param' :: Elements -> React Element
```


#### `path`

``` purescript
path :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `path'`

``` purescript
path' :: Elements -> React Element
```


#### `pattern`

``` purescript
pattern :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `pattern'`

``` purescript
pattern' :: Elements -> React Element
```


#### `picture`

``` purescript
picture :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `picture'`

``` purescript
picture' :: Elements -> React Element
```


#### `polygon`

``` purescript
polygon :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `polygon'`

``` purescript
polygon' :: Elements -> React Element
```


#### `polyline`

``` purescript
polyline :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `polyline'`

``` purescript
polyline' :: Elements -> React Element
```


#### `pre`

``` purescript
pre :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `pre'`

``` purescript
pre' :: Elements -> React Element
```


#### `progress`

``` purescript
progress :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `progress'`

``` purescript
progress' :: Elements -> React Element
```


#### `q`

``` purescript
q :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `q'`

``` purescript
q' :: Elements -> React Element
```


#### `radialGradient`

``` purescript
radialGradient :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `radialGradient'`

``` purescript
radialGradient' :: Elements -> React Element
```


#### `rect`

``` purescript
rect :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `rect'`

``` purescript
rect' :: Elements -> React Element
```


#### `rp`

``` purescript
rp :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `rp'`

``` purescript
rp' :: Elements -> React Element
```


#### `rt`

``` purescript
rt :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `rt'`

``` purescript
rt' :: Elements -> React Element
```


#### `ruby`

``` purescript
ruby :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `ruby'`

``` purescript
ruby' :: Elements -> React Element
```


#### `s`

``` purescript
s :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `s'`

``` purescript
s' :: Elements -> React Element
```


#### `samp`

``` purescript
samp :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `samp'`

``` purescript
samp' :: Elements -> React Element
```


#### `script`

``` purescript
script :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `script'`

``` purescript
script' :: Elements -> React Element
```


#### `section`

``` purescript
section :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `section'`

``` purescript
section' :: Elements -> React Element
```


#### `select`

``` purescript
select :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `select'`

``` purescript
select' :: Elements -> React Element
```


#### `small`

``` purescript
small :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `small'`

``` purescript
small' :: Elements -> React Element
```


#### `source`

``` purescript
source :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `source'`

``` purescript
source' :: Elements -> React Element
```


#### `span`

``` purescript
span :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `span'`

``` purescript
span' :: Elements -> React Element
```


#### `stop`

``` purescript
stop :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `stop'`

``` purescript
stop' :: Elements -> React Element
```


#### `strong`

``` purescript
strong :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `strong'`

``` purescript
strong' :: Elements -> React Element
```


#### `style`

``` purescript
style :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `style'`

``` purescript
style' :: Elements -> React Element
```


#### `sub`

``` purescript
sub :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `sub'`

``` purescript
sub' :: Elements -> React Element
```


#### `summary`

``` purescript
summary :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `summary'`

``` purescript
summary' :: Elements -> React Element
```


#### `sup`

``` purescript
sup :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `sup'`

``` purescript
sup' :: Elements -> React Element
```


#### `svg`

``` purescript
svg :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `svg'`

``` purescript
svg' :: Elements -> React Element
```


#### `table`

``` purescript
table :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `table'`

``` purescript
table' :: Elements -> React Element
```


#### `tbody`

``` purescript
tbody :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `tbody'`

``` purescript
tbody' :: Elements -> React Element
```


#### `td`

``` purescript
td :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `td'`

``` purescript
td' :: Elements -> React Element
```


#### `text`

``` purescript
text :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `text'`

``` purescript
text' :: Elements -> React Element
```


#### `textarea`

``` purescript
textarea :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `textarea'`

``` purescript
textarea' :: Elements -> React Element
```


#### `tfoot`

``` purescript
tfoot :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `tfoot'`

``` purescript
tfoot' :: Elements -> React Element
```


#### `th`

``` purescript
th :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `th'`

``` purescript
th' :: Elements -> React Element
```


#### `thead`

``` purescript
thead :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `thead'`

``` purescript
thead' :: Elements -> React Element
```


#### `time`

``` purescript
time :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `time'`

``` purescript
time' :: Elements -> React Element
```


#### `title`

``` purescript
title :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `title'`

``` purescript
title' :: Elements -> React Element
```


#### `tr`

``` purescript
tr :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `tr'`

``` purescript
tr' :: Elements -> React Element
```


#### `track`

``` purescript
track :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `track'`

``` purescript
track' :: Elements -> React Element
```


#### `tspan`

``` purescript
tspan :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `tspan'`

``` purescript
tspan' :: Elements -> React Element
```


#### `u`

``` purescript
u :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `u'`

``` purescript
u' :: Elements -> React Element
```


#### `ul`

``` purescript
ul :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `ul'`

``` purescript
ul' :: Elements -> React Element
```


#### `var`

``` purescript
var :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `var'`

``` purescript
var' :: Elements -> React Element
```


#### `video`

``` purescript
video :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `video'`

``` purescript
video' :: Elements -> React Element
```


#### `wbr`

``` purescript
wbr :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
```


#### `wbr'`

``` purescript
wbr' :: Elements -> React Element
```



## Module React.Events

#### `Events`

``` purescript
newtype Events eff props state
  = Events (Options (EventName eff props state))
```


#### `semigroupEvents`

``` purescript
instance semigroupEvents :: Semigroup (Events eff props state)
```


#### `monoidEvents`

``` purescript
instance monoidEvents :: Monoid (Events eff props state)
```


#### `EventName`

``` purescript
data EventName :: # ! -> * -> * -> *
```


#### `SyntheticClipboardEvent`

``` purescript
newtype SyntheticClipboardEvent
  = SyntheticClipboardEvent { clipboardData :: DOMDataTransfer, "type" :: String, timeStamp :: Number, target :: DOMEventTarget, stopPropagation :: forall eff. Eff (dom :: DOM | eff) Unit, preventDefault :: forall eff. Eff (dom :: DOM | eff) Unit, nativeEvent :: DOMEvent, isTrusted :: Boolean, eventPhase :: Number, defaultPrevented :: Boolean, currentTarget :: DOMEventTarget, cancelable :: Boolean, bubbles :: Boolean }
```


#### `SyntheticKeyboardEvent`

``` purescript
newtype SyntheticKeyboardEvent
  = SyntheticKeyboardEvent { which :: Number, shiftKey :: Boolean, repeat :: Boolean, metaKey :: Boolean, location :: Number, locale :: String, keyCode :: Number, key :: String, getModifierState :: String -> Boolean, ctrlKey :: Boolean, charCode :: Number, altKey :: Boolean, "type" :: String, timeStamp :: Number, target :: DOMEventTarget, stopPropagation :: forall eff. Eff (dom :: DOM | eff) Unit, preventDefault :: forall eff. Eff (dom :: DOM | eff) Unit, nativeEvent :: DOMEvent, isTrusted :: Boolean, eventPhase :: Number, defaultPrevented :: Boolean, currentTarget :: DOMEventTarget, cancelable :: Boolean, bubbles :: Boolean }
```


#### `SyntheticFocusEvent`

``` purescript
newtype SyntheticFocusEvent
  = SyntheticFocusEvent { relatedTarget :: DOMEventTarget, "type" :: String, timeStamp :: Number, target :: DOMEventTarget, stopPropagation :: forall eff. Eff (dom :: DOM | eff) Unit, preventDefault :: forall eff. Eff (dom :: DOM | eff) Unit, nativeEvent :: DOMEvent, isTrusted :: Boolean, eventPhase :: Number, defaultPrevented :: Boolean, currentTarget :: DOMEventTarget, cancelable :: Boolean, bubbles :: Boolean }
```


#### `SyntheticInputEvent`

``` purescript
newtype SyntheticInputEvent
  = SyntheticInputEvent { "type" :: String, timeStamp :: Number, target :: DOMEventTarget, stopPropagation :: forall eff. Eff (dom :: DOM | eff) Unit, preventDefault :: forall eff. Eff (dom :: DOM | eff) Unit, nativeEvent :: DOMEvent, isTrusted :: Boolean, eventPhase :: Number, defaultPrevented :: Boolean, currentTarget :: DOMEventTarget, cancelable :: Boolean, bubbles :: Boolean }
```


#### `SyntheticMouseEvent`

``` purescript
newtype SyntheticMouseEvent
  = SyntheticMouseEvent { shiftKey :: Boolean, screenY :: Number, screenX :: Number, relatedTarget :: DOMEventTarget, pageY :: Number, pageX :: Number, metaKey :: Boolean, getModifierState :: String -> Boolean, ctrlKey :: Boolean, clientY :: Number, clientX :: Number, buttons :: Number, button :: Number, altKey :: Boolean, "type" :: String, timeStamp :: Number, target :: DOMEventTarget, stopPropagation :: forall eff. Eff (dom :: DOM | eff) Unit, preventDefault :: forall eff. Eff (dom :: DOM | eff) Unit, nativeEvent :: DOMEvent, isTrusted :: Boolean, eventPhase :: Number, defaultPrevented :: Boolean, currentTarget :: DOMEventTarget, cancelable :: Boolean, bubbles :: Boolean }
```


#### `SyntheticTouchEvent`

``` purescript
newtype SyntheticTouchEvent
  = SyntheticTouchEvent { touches :: DOMTouchList, targetTouches :: DOMTouchList, shiftKey :: Boolean, metaKey :: Boolean, getModifierState :: String -> Boolean, ctrlKey :: Boolean, changedTouches :: DOMTouchList, altKey :: Boolean, "type" :: String, timeStamp :: Number, target :: DOMEventTarget, stopPropagation :: forall eff. Eff (dom :: DOM | eff) Unit, preventDefault :: forall eff. Eff (dom :: DOM | eff) Unit, nativeEvent :: DOMEvent, isTrusted :: Boolean, eventPhase :: Number, defaultPrevented :: Boolean, currentTarget :: DOMEventTarget, cancelable :: Boolean, bubbles :: Boolean }
```


#### `SyntheticUIEvent`

``` purescript
newtype SyntheticUIEvent
  = SyntheticUIEvent { view :: DOMAbstractView, detail :: Number, "type" :: String, timeStamp :: Number, target :: DOMEventTarget, stopPropagation :: forall eff. Eff (dom :: DOM | eff) Unit, preventDefault :: forall eff. Eff (dom :: DOM | eff) Unit, nativeEvent :: DOMEvent, isTrusted :: Boolean, eventPhase :: Number, defaultPrevented :: Boolean, currentTarget :: DOMEventTarget, cancelable :: Boolean, bubbles :: Boolean }
```


#### `SyntheticWheelEvent`

``` purescript
newtype SyntheticWheelEvent
  = SyntheticWheelEvent { deltaZ :: Number, deltaY :: Number, deltaX :: Number, deltaMode :: Number, detail :: Number, "type" :: String, timeStamp :: Number, target :: DOMEventTarget, stopPropagation :: forall eff. Eff (dom :: DOM | eff) Unit, preventDefault :: forall eff. Eff (dom :: DOM | eff) Unit, nativeEvent :: DOMEvent, isTrusted :: Boolean, eventPhase :: Number, defaultPrevented :: Boolean, currentTarget :: DOMEventTarget, cancelable :: Boolean, bubbles :: Boolean }
```


#### `SyntheticCompositionEvent`

``` purescript
data SyntheticCompositionEvent
```


#### `SyntheticDragEvent`

``` purescript
data SyntheticDragEvent
```


#### `SyntheticClipboardEventFn`

``` purescript
newtype SyntheticClipboardEventFn eff props state
  = SyntheticClipboardEventFn (SyntheticClipboardEvent -> Eff eff (Component props state Unit))
```


#### `SyntheticCompositionEventFn`

``` purescript
newtype SyntheticCompositionEventFn eff props state
  = SyntheticCompositionEventFn (SyntheticCompositionEvent -> Eff eff (Component props state Unit))
```


#### `SyntheticDragEventFn`

``` purescript
newtype SyntheticDragEventFn eff props state
  = SyntheticDragEventFn (SyntheticDragEvent -> Eff eff (Component props state Unit))
```


#### `SyntheticKeyboardEventFn`

``` purescript
newtype SyntheticKeyboardEventFn eff props state
  = SyntheticKeyboardEventFn (SyntheticKeyboardEvent -> Eff eff (Component props state Unit))
```


#### `SyntheticFocusEventFn`

``` purescript
newtype SyntheticFocusEventFn eff props state
  = SyntheticFocusEventFn (SyntheticFocusEvent -> Eff eff (Component props state Unit))
```


#### `SyntheticInputEventFn`

``` purescript
newtype SyntheticInputEventFn eff props state
  = SyntheticInputEventFn (SyntheticInputEvent -> Eff eff (Component props state Unit))
```


#### `SyntheticMouseEventFn`

``` purescript
newtype SyntheticMouseEventFn eff props state
  = SyntheticMouseEventFn (SyntheticMouseEvent -> Eff eff (Component props state Unit))
```


#### `SyntheticTouchEventFn`

``` purescript
newtype SyntheticTouchEventFn eff props state
  = SyntheticTouchEventFn (SyntheticTouchEvent -> Eff eff (Component props state Unit))
```


#### `SyntheticUIEventFn`

``` purescript
newtype SyntheticUIEventFn eff props state
  = SyntheticUIEventFn (SyntheticUIEvent -> Eff eff (Component props state Unit))
```


#### `SyntheticWheelEventFn`

``` purescript
newtype SyntheticWheelEventFn eff props state
  = SyntheticWheelEventFn (SyntheticWheelEvent -> Eff eff (Component props state Unit))
```


#### `isOptionSyntheticClipboardEventFn`

``` purescript
instance isOptionSyntheticClipboardEventFn :: IsOption (SyntheticClipboardEventFn eff props state)
```


#### `isOptionSyntheticCompositionEventFn`

``` purescript
instance isOptionSyntheticCompositionEventFn :: IsOption (SyntheticCompositionEventFn eff props state)
```


#### `isOptionSyntheticDragEventFn`

``` purescript
instance isOptionSyntheticDragEventFn :: IsOption (SyntheticDragEventFn eff props state)
```


#### `isOptionSyntheticKeyboardEventFn`

``` purescript
instance isOptionSyntheticKeyboardEventFn :: IsOption (SyntheticKeyboardEventFn eff props state)
```


#### `isOptionSyntheticFocusEventFn`

``` purescript
instance isOptionSyntheticFocusEventFn :: IsOption (SyntheticFocusEventFn eff props state)
```


#### `isOptionSyntheticInputEventFn`

``` purescript
instance isOptionSyntheticInputEventFn :: IsOption (SyntheticInputEventFn eff props state)
```


#### `isOptionSyntheticMouseEventFn`

``` purescript
instance isOptionSyntheticMouseEventFn :: IsOption (SyntheticMouseEventFn eff props state)
```


#### `isOptionSyntheticTouchEventFn`

``` purescript
instance isOptionSyntheticTouchEventFn :: IsOption (SyntheticTouchEventFn eff props state)
```


#### `isOptionSyntheticUIEventFn`

``` purescript
instance isOptionSyntheticUIEventFn :: IsOption (SyntheticUIEventFn eff props state)
```


#### `isOptionSyntheticWheelEventFn`

``` purescript
instance isOptionSyntheticWheelEventFn :: IsOption (SyntheticWheelEventFn eff props state)
```


#### `onCopy`

``` purescript
onCopy :: forall eff props state. Option (EventName eff props state) (SyntheticClipboardEventFn eff props state)
```


#### `onCopyCapture`

``` purescript
onCopyCapture :: forall eff props state. Option (EventName eff props state) (SyntheticClipboardEventFn eff props state)
```


#### `onCut`

``` purescript
onCut :: forall eff props state. Option (EventName eff props state) (SyntheticClipboardEventFn eff props state)
```


#### `onCutCapture`

``` purescript
onCutCapture :: forall eff props state. Option (EventName eff props state) (SyntheticClipboardEventFn eff props state)
```


#### `onPaste`

``` purescript
onPaste :: forall eff props state. Option (EventName eff props state) (SyntheticClipboardEventFn eff props state)
```


#### `onPasteCapture`

``` purescript
onPasteCapture :: forall eff props state. Option (EventName eff props state) (SyntheticClipboardEventFn eff props state)
```


#### `onFocus`

``` purescript
onFocus :: forall eff props state. Option (EventName eff props state) (SyntheticFocusEventFn eff props state)
```


#### `onFocusCapture`

``` purescript
onFocusCapture :: forall eff props state. Option (EventName eff props state) (SyntheticFocusEventFn eff props state)
```


#### `onBlur`

``` purescript
onBlur :: forall eff props state. Option (EventName eff props state) (SyntheticFocusEventFn eff props state)
```


#### `onBlurCapture`

``` purescript
onBlurCapture :: forall eff props state. Option (EventName eff props state) (SyntheticFocusEventFn eff props state)
```


#### `onChange`

``` purescript
onChange :: forall eff props state. Option (EventName eff props state) (SyntheticInputEventFn eff props state)
```


#### `onChangeCapture`

``` purescript
onChangeCapture :: forall eff props state. Option (EventName eff props state) (SyntheticInputEventFn eff props state)
```


#### `onInput`

``` purescript
onInput :: forall eff props state. Option (EventName eff props state) (SyntheticInputEventFn eff props state)
```


#### `onInputCapture`

``` purescript
onInputCapture :: forall eff props state. Option (EventName eff props state) (SyntheticInputEventFn eff props state)
```


#### `onSubmit`

``` purescript
onSubmit :: forall eff props state. Option (EventName eff props state) (SyntheticInputEventFn eff props state)
```


#### `onSubmitCapture`

``` purescript
onSubmitCapture :: forall eff props state. Option (EventName eff props state) (SyntheticInputEventFn eff props state)
```


#### `onKeyDown`

``` purescript
onKeyDown :: forall eff props state. Option (EventName eff props state) (SyntheticKeyboardEventFn eff props state)
```


#### `onKeyDownCapture`

``` purescript
onKeyDownCapture :: forall eff props state. Option (EventName eff props state) (SyntheticKeyboardEventFn eff props state)
```


#### `onKeyPress`

``` purescript
onKeyPress :: forall eff props state. Option (EventName eff props state) (SyntheticKeyboardEventFn eff props state)
```


#### `onKeyPressCapture`

``` purescript
onKeyPressCapture :: forall eff props state. Option (EventName eff props state) (SyntheticKeyboardEventFn eff props state)
```


#### `onKeyUp`

``` purescript
onKeyUp :: forall eff props state. Option (EventName eff props state) (SyntheticKeyboardEventFn eff props state)
```


#### `onKeyUpCapture`

``` purescript
onKeyUpCapture :: forall eff props state. Option (EventName eff props state) (SyntheticKeyboardEventFn eff props state)
```


#### `onClick`

``` purescript
onClick :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onClickCapture`

``` purescript
onClickCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onDoubleClick`

``` purescript
onDoubleClick :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onDoubleClickCapture`

``` purescript
onDoubleClickCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onDrag`

``` purescript
onDrag :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onDragCapture`

``` purescript
onDragCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onDragEnd`

``` purescript
onDragEnd :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onDragEndCapture`

``` purescript
onDragEndCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onDragEnter`

``` purescript
onDragEnter :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onDragEnterCapture`

``` purescript
onDragEnterCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onDragExit`

``` purescript
onDragExit :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onDragExitCapture`

``` purescript
onDragExitCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onDragLeave`

``` purescript
onDragLeave :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onDragLeaveCapture`

``` purescript
onDragLeaveCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onDragOver`

``` purescript
onDragOver :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onDragOverCapture`

``` purescript
onDragOverCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onDragStart`

``` purescript
onDragStart :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onDragStartCapture`

``` purescript
onDragStartCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onDrop`

``` purescript
onDrop :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onDropCapture`

``` purescript
onDropCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onMouseDown`

``` purescript
onMouseDown :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onMouseDownCapture`

``` purescript
onMouseDownCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onMouseEnter`

``` purescript
onMouseEnter :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onMouseEnterCapture`

``` purescript
onMouseEnterCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onMouseLeave`

``` purescript
onMouseLeave :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onMouseLeaveCapture`

``` purescript
onMouseLeaveCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onMouseMove`

``` purescript
onMouseMove :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onMouseMoveCapture`

``` purescript
onMouseMoveCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onMouseOut`

``` purescript
onMouseOut :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onMouseOutCapture`

``` purescript
onMouseOutCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onMouseOver`

``` purescript
onMouseOver :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onMouseOverCapture`

``` purescript
onMouseOverCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onMouseUp`

``` purescript
onMouseUp :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onMouseUpCapture`

``` purescript
onMouseUpCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)
```


#### `onTouchCancel`

``` purescript
onTouchCancel :: forall eff props state. Option (EventName eff props state) (SyntheticTouchEventFn eff props state)
```


#### `onTouchCancelCapture`

``` purescript
onTouchCancelCapture :: forall eff props state. Option (EventName eff props state) (SyntheticTouchEventFn eff props state)
```


#### `onTouchEnd`

``` purescript
onTouchEnd :: forall eff props state. Option (EventName eff props state) (SyntheticTouchEventFn eff props state)
```


#### `onTouchEndCapture`

``` purescript
onTouchEndCapture :: forall eff props state. Option (EventName eff props state) (SyntheticTouchEventFn eff props state)
```


#### `onTouchMove`

``` purescript
onTouchMove :: forall eff props state. Option (EventName eff props state) (SyntheticTouchEventFn eff props state)
```


#### `onTouchMoveCapture`

``` purescript
onTouchMoveCapture :: forall eff props state. Option (EventName eff props state) (SyntheticTouchEventFn eff props state)
```


#### `onTouchStart`

``` purescript
onTouchStart :: forall eff props state. Option (EventName eff props state) (SyntheticTouchEventFn eff props state)
```


#### `onTouchStartCapture`

``` purescript
onTouchStartCapture :: forall eff props state. Option (EventName eff props state) (SyntheticTouchEventFn eff props state)
```


#### `onScroll`

``` purescript
onScroll :: forall eff props state. Option (EventName eff props state) (SyntheticUIEventFn eff props state)
```


#### `onScrollCapture`

``` purescript
onScrollCapture :: forall eff props state. Option (EventName eff props state) (SyntheticUIEventFn eff props state)
```


#### `onWheel`

``` purescript
onWheel :: forall eff props state. Option (EventName eff props state) (SyntheticWheelEventFn eff props state)
```


#### `onWheelCapture`

``` purescript
onWheelCapture :: forall eff props state. Option (EventName eff props state) (SyntheticWheelEventFn eff props state)
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


#### `LifecycleFn0`

``` purescript
type LifecycleFn0 eff props state a = Reference props state -> Eff eff (Component props state a)
```


#### `LifecycleFn1`

``` purescript
type LifecycleFn1 eff props state a = Reference props state -> Props props -> Eff eff (Component props state a)
```


#### `LifecycleFn2`

``` purescript
type LifecycleFn2 eff props state a = Reference props state -> Props props -> State state -> Eff eff (Component props state a)
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


#### `Spec`

``` purescript
type Spec eff props state = { componentWillUnmount :: ComponentWillUnmount eff props state, componentDidUpdate :: ComponentDidUpdate eff props state, componentWillUpdate :: ComponentWillUpdate eff props state, shouldComponentUpdate :: ShouldComponentUpdate eff props state, componentWillReceiveProps :: ComponentWillReceiveProps eff props state, componentDidMount :: ComponentDidMount eff props state, componentWillMount :: ComponentWillMount eff props state, displayName :: DisplayName, getDefaultProps :: Props props, getInitialState :: State state, render :: RenderFn props state }
```


#### `Specification`

``` purescript
newtype Specification eff props state
  = Specification (Spec eff props state)
```


#### `React`

``` purescript
type React = FreeC ReactF
```


#### `ReactF`

``` purescript
data ReactF a
  = CreateClass (forall eff props state. Specification eff props state) (forall props state. Class props state -> a)
  | CreateElementFromClass (forall props state. Class props state) (forall props. Props props) (forall eff props state. Events eff props state) Elements (Element -> a)
  | CreateElementFromTagName TagName Attributes (forall eff props state. Events eff props state) Elements (Element -> a)
  | RenderSync Element DOMElement (forall props state. Reference props state -> a)
  | RenderAsync Element DOMElement (forall props state. Reference props state -> a)
```


#### `createClass`

``` purescript
createClass :: forall eff props state. Specification eff props state -> React (Class props state)
```


#### `createElementFromClass`

``` purescript
createElementFromClass :: forall eff props state. Class props state -> Props props -> Events eff props state -> Elements -> React Element
```


#### `createElementFromTagName`

``` purescript
createElementFromTagName :: forall eff props state. TagName -> Attributes -> Events eff props state -> Elements -> React Element
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

#### `ReactJs`

``` purescript
data ReactJs
```


#### `run`

``` purescript
run :: forall a. ReactJs -> React a -> Eff (react :: ReactE) a
```



## Module React.Spec

#### `spec`

``` purescript
spec :: forall eff props state. Props props -> State state -> RenderFn props state -> Specification eff props state
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
  | Textnode 
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


#### `ReactE`

``` purescript
data ReactE :: !
```




