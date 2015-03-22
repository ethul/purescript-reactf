module React.Dom
  ( null, raw
  , a, a'
  , abbr, abbr'
  , address, address'
  , area, area'
  , article, article'
  , aside, aside'
  , audio, audio'
  , b, b'
  , base, base'
  , bdi, bdi'
  , bdo, bdo'
  , big, big'
  , blockquote, blockquote'
  , body, body'
  , br, br'
  , button, button'
  , canvas, canvas'
  , caption, caption'
  , circle, circle'
  , cite, cite'
  , code, code'
  , col, col'
  , colgroup, colgroup'
  , _data, _data'
  , datalist, datalist'
  , dd, dd'
  , defs, defs'
  , del, del'
  , details, details'
  , dfn, dfn'
  , dialog, dialog'
  , div, div'
  , dl, dl'
  , dt, dt'
  , ellipse, ellipse'
  , em, em'
  , embed, embed'
  , fieldset, fieldset'
  , figcaption, figcaption'
  , figure, figure'
  , footer, footer'
  , form, form'
  , g, g'
  , h1, h1'
  , h2, h2'
  , h3, h3'
  , h4, h4'
  , h5, h5'
  , h6, h6'
  , head, head'
  , header, header'
  , hr, hr'
  , html, html'
  , i, i'
  , iframe, iframe'
  , img, img'
  , input, input'
  , ins, ins'
  , kbd, kbd'
  , keygen, keygen'
  , label, label'
  , legend, legend'
  , li, li'
  , line, line'
  , linearGradient, linearGradient'
  , link, link'
  , main, main'
  , map, map'
  , mark, mark'
  , mask, mask'
  , menu, menu'
  , menuitem, menuitem'
  , meta, meta'
  , meter, meter'
  , nav, nav'
  , noscript, noscript'
  , object, object'
  , ol, ol'
  , optgroup, optgroup'
  , option, option'
  , output, output'
  , p, p'
  , param, param'
  , path, path'
  , pattern, pattern'
  , picture, picture'
  , polygon, polygon'
  , polyline, polyline'
  , pre, pre'
  , progress, progress'
  , q, q'
  , radialGradient, radialGradient'
  , rect, rect'
  , rp, rp'
  , rt, rt'
  , ruby, ruby'
  , s, s'
  , samp, samp'
  , script, script'
  , section, section'
  , select, select'
  , small, small'
  , source, source'
  , span, span'
  , stop, stop'
  , strong, strong'
  , style, style'
  , sub, sub'
  , summary, summary'
  , sup, sup'
  , svg, svg'
  , table, table'
  , tbody, tbody'
  , td, td'
  , text, text'
  , textarea, textarea'
  , tfoot, tfoot'
  , th, th'
  , thead, thead'
  , time, time'
  , title, title'
  , tr, tr'
  , track, track'
  , tspan, tspan'
  , u, u'
  , ul, ul'
  , var, var'
  , video, video'
  , wbr, wbr'
  ) where

import Data.Monoid (mempty)

import React.Attributes (Attributes())
import React.ReactF (Element(), Elements(), React(), createElementFromTagName)

import qualified React.TagName as T

null :: React Element
null = createElementFromTagName T.Null mempty mempty

raw :: String -> React Element
raw a = createElementFromTagName T.Raw mempty [toRaw a]

foreign import toRaw "function toRaw(a){ return a; }" :: String -> Element

a :: Attributes -> Elements -> React Element
a = createElementFromTagName T.A

a' :: Elements -> React Element
a' = a mempty

abbr :: Attributes -> Elements -> React Element
abbr = createElementFromTagName T.Abbr

abbr' :: Elements -> React Element
abbr' = abbr mempty

address :: Attributes -> Elements -> React Element
address = createElementFromTagName T.Address

address' :: Elements -> React Element
address' = address mempty

area :: Attributes -> Elements -> React Element
area = createElementFromTagName T.Area

area' :: Elements -> React Element
area' = area mempty

article :: Attributes -> Elements -> React Element
article = createElementFromTagName T.Article

article' :: Elements -> React Element
article' = article mempty

aside :: Attributes -> Elements -> React Element
aside = createElementFromTagName T.Aside

aside' :: Elements -> React Element
aside' = aside mempty

audio :: Attributes -> Elements -> React Element
audio = createElementFromTagName T.Audio

audio' :: Elements -> React Element
audio' = audio mempty

b :: Attributes -> Elements -> React Element
b = createElementFromTagName T.B

b' :: Elements -> React Element
b' = b mempty

base :: Attributes -> Elements -> React Element
base = createElementFromTagName T.Base

base' :: Elements -> React Element
base' = base mempty

bdi :: Attributes -> Elements -> React Element
bdi = createElementFromTagName T.Bdi

bdi' :: Elements -> React Element
bdi' = bdi mempty

bdo :: Attributes -> Elements -> React Element
bdo = createElementFromTagName T.Bdo

bdo' :: Elements -> React Element
bdo' = bdo mempty

big :: Attributes -> Elements -> React Element
big = createElementFromTagName T.Big

big' :: Elements -> React Element
big' = big mempty

blockquote :: Attributes -> Elements -> React Element
blockquote = createElementFromTagName T.Blockquote

blockquote' :: Elements -> React Element
blockquote' = blockquote mempty

body :: Attributes -> Elements -> React Element
body = createElementFromTagName T.Body

body' :: Elements -> React Element
body' = body mempty

br :: Attributes -> Elements -> React Element
br = createElementFromTagName T.Br

br' :: Elements -> React Element
br' = br mempty

button :: Attributes -> Elements -> React Element
button = createElementFromTagName T.Button

button' :: Elements -> React Element
button' = button mempty

canvas :: Attributes -> Elements -> React Element
canvas = createElementFromTagName T.Canvas

canvas' :: Elements -> React Element
canvas' = canvas mempty

caption :: Attributes -> Elements -> React Element
caption = createElementFromTagName T.Caption

caption' :: Elements -> React Element
caption' = caption mempty

circle :: Attributes -> Elements -> React Element
circle = createElementFromTagName T.Circle

circle' :: Elements -> React Element
circle' = circle mempty

cite :: Attributes -> Elements -> React Element
cite = createElementFromTagName T.Cite

cite' :: Elements -> React Element
cite' = cite mempty

code :: Attributes -> Elements -> React Element
code = createElementFromTagName T.Code

code' :: Elements -> React Element
code' = code mempty

col :: Attributes -> Elements -> React Element
col = createElementFromTagName T.Col

col' :: Elements -> React Element
col' = col mempty

colgroup :: Attributes -> Elements -> React Element
colgroup = createElementFromTagName T.Colgroup

colgroup' :: Elements -> React Element
colgroup' = colgroup mempty

_data :: Attributes -> Elements -> React Element
_data = createElementFromTagName T.Data

_data' :: Elements -> React Element
_data' = _data mempty

datalist :: Attributes -> Elements -> React Element
datalist = createElementFromTagName T.Datalist

datalist' :: Elements -> React Element
datalist' = datalist mempty

dd :: Attributes -> Elements -> React Element
dd = createElementFromTagName T.Dd

dd' :: Elements -> React Element
dd' = dd mempty

defs :: Attributes -> Elements -> React Element
defs = createElementFromTagName T.Defs

defs' :: Elements -> React Element
defs' = defs mempty

del :: Attributes -> Elements -> React Element
del = createElementFromTagName T.Del

del' :: Elements -> React Element
del' = del mempty

details :: Attributes -> Elements -> React Element
details = createElementFromTagName T.Details

details' :: Elements -> React Element
details' = details mempty

dfn :: Attributes -> Elements -> React Element
dfn = createElementFromTagName T.Dfn

dfn' :: Elements -> React Element
dfn' = dfn mempty

dialog :: Attributes -> Elements -> React Element
dialog = createElementFromTagName T.Dialog

dialog' :: Elements -> React Element
dialog' = dialog mempty

div :: Attributes -> Elements -> React Element
div = createElementFromTagName T.Div

div' :: Elements -> React Element
div' = div mempty

dl :: Attributes -> Elements -> React Element
dl = createElementFromTagName T.Dl

dl' :: Elements -> React Element
dl' = dl mempty

dt :: Attributes -> Elements -> React Element
dt = createElementFromTagName T.Dt

dt' :: Elements -> React Element
dt' = dt mempty

ellipse :: Attributes -> Elements -> React Element
ellipse = createElementFromTagName T.Ellipse

ellipse' :: Elements -> React Element
ellipse' = ellipse mempty

em :: Attributes -> Elements -> React Element
em = createElementFromTagName T.Em

em' :: Elements -> React Element
em' = em mempty

embed :: Attributes -> Elements -> React Element
embed = createElementFromTagName T.Embed

embed' :: Elements -> React Element
embed' = embed mempty

fieldset :: Attributes -> Elements -> React Element
fieldset = createElementFromTagName T.Fieldset

fieldset' :: Elements -> React Element
fieldset' = fieldset mempty

figcaption :: Attributes -> Elements -> React Element
figcaption = createElementFromTagName T.Figcaption

figcaption' :: Elements -> React Element
figcaption' = figcaption mempty

figure :: Attributes -> Elements -> React Element
figure = createElementFromTagName T.Figure

figure' :: Elements -> React Element
figure' = figure mempty

footer :: Attributes -> Elements -> React Element
footer = createElementFromTagName T.Footer

footer' :: Elements -> React Element
footer' = footer mempty

form :: Attributes -> Elements -> React Element
form = createElementFromTagName T.Form

form' :: Elements -> React Element
form' = form mempty

g :: Attributes -> Elements -> React Element
g = createElementFromTagName T.G

g' :: Elements -> React Element
g' = g mempty

h1 :: Attributes -> Elements -> React Element
h1 = createElementFromTagName T.H1

h1' :: Elements -> React Element
h1' = h1 mempty

h2 :: Attributes -> Elements -> React Element
h2 = createElementFromTagName T.H2

h2' :: Elements -> React Element
h2' = h2 mempty

h3 :: Attributes -> Elements -> React Element
h3 = createElementFromTagName T.H3

h3' :: Elements -> React Element
h3' = h3 mempty

h4 :: Attributes -> Elements -> React Element
h4 = createElementFromTagName T.H4

h4' :: Elements -> React Element
h4' = h4 mempty

h5 :: Attributes -> Elements -> React Element
h5 = createElementFromTagName T.H5

h5' :: Elements -> React Element
h5' = h5 mempty

h6 :: Attributes -> Elements -> React Element
h6 = createElementFromTagName T.H6

h6' :: Elements -> React Element
h6' = h6 mempty

head :: Attributes -> Elements -> React Element
head = createElementFromTagName T.Head

head' :: Elements -> React Element
head' = head mempty

header :: Attributes -> Elements -> React Element
header = createElementFromTagName T.Header

header' :: Elements -> React Element
header' = header mempty

hr :: Attributes -> Elements -> React Element
hr = createElementFromTagName T.Hr

hr' :: Elements -> React Element
hr' = hr mempty

html :: Attributes -> Elements -> React Element
html = createElementFromTagName T.Html

html' :: Elements -> React Element
html' = html mempty

i :: Attributes -> Elements -> React Element
i = createElementFromTagName T.I

i' :: Elements -> React Element
i' = i mempty

iframe :: Attributes -> Elements -> React Element
iframe = createElementFromTagName T.Iframe

iframe' :: Elements -> React Element
iframe' = iframe mempty

img :: Attributes -> Elements -> React Element
img = createElementFromTagName T.Img

img' :: Elements -> React Element
img' = img mempty

input :: Attributes -> Elements -> React Element
input = createElementFromTagName T.Input

input' :: Elements -> React Element
input' = input mempty

ins :: Attributes -> Elements -> React Element
ins = createElementFromTagName T.Ins

ins' :: Elements -> React Element
ins' = ins mempty

kbd :: Attributes -> Elements -> React Element
kbd = createElementFromTagName T.Kbd

kbd' :: Elements -> React Element
kbd' = kbd mempty

keygen :: Attributes -> Elements -> React Element
keygen = createElementFromTagName T.Keygen

keygen' :: Elements -> React Element
keygen' = keygen mempty

label :: Attributes -> Elements -> React Element
label = createElementFromTagName T.Label

label' :: Elements -> React Element
label' = label mempty

legend :: Attributes -> Elements -> React Element
legend = createElementFromTagName T.Legend

legend' :: Elements -> React Element
legend' = legend mempty

li :: Attributes -> Elements -> React Element
li = createElementFromTagName T.Li

li' :: Elements -> React Element
li' = li mempty

line :: Attributes -> Elements -> React Element
line = createElementFromTagName T.Line

line' :: Elements -> React Element
line' = line mempty

linearGradient :: Attributes -> Elements -> React Element
linearGradient = createElementFromTagName T.LinearGradient

linearGradient' :: Elements -> React Element
linearGradient' = linearGradient mempty

link :: Attributes -> Elements -> React Element
link = createElementFromTagName T.Link

link' :: Elements -> React Element
link' = link mempty

main :: Attributes -> Elements -> React Element
main = createElementFromTagName T.Main

main' :: Elements -> React Element
main' = main mempty

map :: Attributes -> Elements -> React Element
map = createElementFromTagName T.Map

map' :: Elements -> React Element
map' = map mempty

mark :: Attributes -> Elements -> React Element
mark = createElementFromTagName T.Mark

mark' :: Elements -> React Element
mark' = mark mempty

mask :: Attributes -> Elements -> React Element
mask = createElementFromTagName T.Mask

mask' :: Elements -> React Element
mask' = mask mempty

menu :: Attributes -> Elements -> React Element
menu = createElementFromTagName T.Menu

menu' :: Elements -> React Element
menu' = menu mempty

menuitem :: Attributes -> Elements -> React Element
menuitem = createElementFromTagName T.Menuitem

menuitem' :: Elements -> React Element
menuitem' = menuitem mempty

meta :: Attributes -> Elements -> React Element
meta = createElementFromTagName T.Meta

meta' :: Elements -> React Element
meta' = meta mempty

meter :: Attributes -> Elements -> React Element
meter = createElementFromTagName T.Meter

meter' :: Elements -> React Element
meter' = meter mempty

nav :: Attributes -> Elements -> React Element
nav = createElementFromTagName T.Nav

nav' :: Elements -> React Element
nav' = nav mempty

noscript :: Attributes -> Elements -> React Element
noscript = createElementFromTagName T.Noscript

noscript' :: Elements -> React Element
noscript' = noscript mempty

object :: Attributes -> Elements -> React Element
object = createElementFromTagName T.Object

object' :: Elements -> React Element
object' = object mempty

ol :: Attributes -> Elements -> React Element
ol = createElementFromTagName T.Ol

ol' :: Elements -> React Element
ol' = ol mempty

optgroup :: Attributes -> Elements -> React Element
optgroup = createElementFromTagName T.Optgroup

optgroup' :: Elements -> React Element
optgroup' = optgroup mempty

option :: Attributes -> Elements -> React Element
option = createElementFromTagName T.Option

option' :: Elements -> React Element
option' = option mempty

output :: Attributes -> Elements -> React Element
output = createElementFromTagName T.Output

output' :: Elements -> React Element
output' = output mempty

p :: Attributes -> Elements -> React Element
p = createElementFromTagName T.P

p' :: Elements -> React Element
p' = p mempty

param :: Attributes -> Elements -> React Element
param = createElementFromTagName T.Param

param' :: Elements -> React Element
param' = param mempty

path :: Attributes -> Elements -> React Element
path = createElementFromTagName T.Path

path' :: Elements -> React Element
path' = path mempty

pattern :: Attributes -> Elements -> React Element
pattern = createElementFromTagName T.Pattern

pattern' :: Elements -> React Element
pattern' = pattern mempty

picture :: Attributes -> Elements -> React Element
picture = createElementFromTagName T.Picture

picture' :: Elements -> React Element
picture' = picture mempty

polygon :: Attributes -> Elements -> React Element
polygon = createElementFromTagName T.Polygon

polygon' :: Elements -> React Element
polygon' = polygon mempty

polyline :: Attributes -> Elements -> React Element
polyline = createElementFromTagName T.Polyline

polyline' :: Elements -> React Element
polyline' = polyline mempty

pre :: Attributes -> Elements -> React Element
pre = createElementFromTagName T.Pre

pre' :: Elements -> React Element
pre' = pre mempty

progress :: Attributes -> Elements -> React Element
progress = createElementFromTagName T.Progress

progress' :: Elements -> React Element
progress' = progress mempty

q :: Attributes -> Elements -> React Element
q = createElementFromTagName T.Q

q' :: Elements -> React Element
q' = q mempty

radialGradient :: Attributes -> Elements -> React Element
radialGradient = createElementFromTagName T.RadialGradient

radialGradient' :: Elements -> React Element
radialGradient' = radialGradient mempty

rect :: Attributes -> Elements -> React Element
rect = createElementFromTagName T.Rect

rect' :: Elements -> React Element
rect' = rect mempty

rp :: Attributes -> Elements -> React Element
rp = createElementFromTagName T.Rp

rp' :: Elements -> React Element
rp' = rp mempty

rt :: Attributes -> Elements -> React Element
rt = createElementFromTagName T.Rt

rt' :: Elements -> React Element
rt' = rt mempty

ruby :: Attributes -> Elements -> React Element
ruby = createElementFromTagName T.Ruby

ruby' :: Elements -> React Element
ruby' = ruby mempty

s :: Attributes -> Elements -> React Element
s = createElementFromTagName T.S

s' :: Elements -> React Element
s' = s mempty

samp :: Attributes -> Elements -> React Element
samp = createElementFromTagName T.Samp

samp' :: Elements -> React Element
samp' = samp mempty

script :: Attributes -> Elements -> React Element
script = createElementFromTagName T.Script

script' :: Elements -> React Element
script' = script mempty

section :: Attributes -> Elements -> React Element
section = createElementFromTagName T.Section

section' :: Elements -> React Element
section' = section mempty

select :: Attributes -> Elements -> React Element
select = createElementFromTagName T.Select

select' :: Elements -> React Element
select' = select mempty

small :: Attributes -> Elements -> React Element
small = createElementFromTagName T.Small

small' :: Elements -> React Element
small' = small mempty

source :: Attributes -> Elements -> React Element
source = createElementFromTagName T.Source

source' :: Elements -> React Element
source' = source mempty

span :: Attributes -> Elements -> React Element
span = createElementFromTagName T.Span

span' :: Elements -> React Element
span' = span mempty

stop :: Attributes -> Elements -> React Element
stop = createElementFromTagName T.Stop

stop' :: Elements -> React Element
stop' = stop mempty

strong :: Attributes -> Elements -> React Element
strong = createElementFromTagName T.Strong

strong' :: Elements -> React Element
strong' = strong mempty

style :: Attributes -> Elements -> React Element
style = createElementFromTagName T.Style

style' :: Elements -> React Element
style' = style mempty

sub :: Attributes -> Elements -> React Element
sub = createElementFromTagName T.Sub

sub' :: Elements -> React Element
sub' = sub mempty

summary :: Attributes -> Elements -> React Element
summary = createElementFromTagName T.Summary

summary' :: Elements -> React Element
summary' = summary mempty

sup :: Attributes -> Elements -> React Element
sup = createElementFromTagName T.Sup

sup' :: Elements -> React Element
sup' = sup mempty

svg :: Attributes -> Elements -> React Element
svg = createElementFromTagName T.Svg

svg' :: Elements -> React Element
svg' = svg mempty

table :: Attributes -> Elements -> React Element
table = createElementFromTagName T.Table

table' :: Elements -> React Element
table' = table mempty

tbody :: Attributes -> Elements -> React Element
tbody = createElementFromTagName T.Tbody

tbody' :: Elements -> React Element
tbody' = tbody mempty

td :: Attributes -> Elements -> React Element
td = createElementFromTagName T.Td

td' :: Elements -> React Element
td' = td mempty

text :: Attributes -> Elements -> React Element
text = createElementFromTagName T.Text

text' :: Elements -> React Element
text' = text mempty

textarea :: Attributes -> Elements -> React Element
textarea = createElementFromTagName T.Textarea

textarea' :: Elements -> React Element
textarea' = textarea mempty

tfoot :: Attributes -> Elements -> React Element
tfoot = createElementFromTagName T.Tfoot

tfoot' :: Elements -> React Element
tfoot' = tfoot mempty

th :: Attributes -> Elements -> React Element
th = createElementFromTagName T.Th

th' :: Elements -> React Element
th' = th mempty

thead :: Attributes -> Elements -> React Element
thead = createElementFromTagName T.Thead

thead' :: Elements -> React Element
thead' = thead mempty

time :: Attributes -> Elements -> React Element
time = createElementFromTagName T.Time

time' :: Elements -> React Element
time' = time mempty

title :: Attributes -> Elements -> React Element
title = createElementFromTagName T.Title

title' :: Elements -> React Element
title' = title mempty

tr :: Attributes -> Elements -> React Element
tr = createElementFromTagName T.Tr

tr' :: Elements -> React Element
tr' = tr mempty

track :: Attributes -> Elements -> React Element
track = createElementFromTagName T.Track

track' :: Elements -> React Element
track' = track mempty

tspan :: Attributes -> Elements -> React Element
tspan = createElementFromTagName T.Tspan

tspan' :: Elements -> React Element
tspan' = tspan mempty

u :: Attributes -> Elements -> React Element
u = createElementFromTagName T.U

u' :: Elements -> React Element
u' = u mempty

ul :: Attributes -> Elements -> React Element
ul = createElementFromTagName T.Ul

ul' :: Elements -> React Element
ul' = ul mempty

var :: Attributes -> Elements -> React Element
var = createElementFromTagName T.Var

var' :: Elements -> React Element
var' = var mempty

video :: Attributes -> Elements -> React Element
video = createElementFromTagName T.Video

video' :: Elements -> React Element
video' = video mempty

wbr :: Attributes -> Elements -> React Element
wbr = createElementFromTagName T.Wbr

wbr' :: Elements -> React Element
wbr' = wbr mempty
