module React.Dom
  ( null, textnode
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
import React.Events (Events())
import React.ReactF (Element(), Elements(), React(), createElementFromTagName)
import qualified React.TagName as T

null :: React Element
null = createElementFromTagName T.Null mempty mempty mempty

textnode :: String -> React Element
textnode a = createElementFromTagName T.Textnode mempty mempty [toTextnode a]

foreign import toTextnode "function toTextnode(a){return a;}" :: String -> Element

a :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
a = createElementFromTagName T.A

a' :: Elements -> React Element
a' = a mempty mempty

abbr :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
abbr = createElementFromTagName T.Abbr

abbr' :: Elements -> React Element
abbr' = abbr mempty mempty

address :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
address = createElementFromTagName T.Address

address' :: Elements -> React Element
address' = address mempty mempty

area :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
area = createElementFromTagName T.Area

area' :: Elements -> React Element
area' = area mempty mempty

article :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
article = createElementFromTagName T.Article

article' :: Elements -> React Element
article' = article mempty mempty

aside :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
aside = createElementFromTagName T.Aside

aside' :: Elements -> React Element
aside' = aside mempty mempty

audio :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
audio = createElementFromTagName T.Audio

audio' :: Elements -> React Element
audio' = audio mempty mempty

b :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
b = createElementFromTagName T.B

b' :: Elements -> React Element
b' = b mempty mempty

base :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
base = createElementFromTagName T.Base

base' :: Elements -> React Element
base' = base mempty mempty

bdi :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
bdi = createElementFromTagName T.Bdi

bdi' :: Elements -> React Element
bdi' = bdi mempty mempty

bdo :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
bdo = createElementFromTagName T.Bdo

bdo' :: Elements -> React Element
bdo' = bdo mempty mempty

big :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
big = createElementFromTagName T.Big

big' :: Elements -> React Element
big' = big mempty mempty

blockquote :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
blockquote = createElementFromTagName T.Blockquote

blockquote' :: Elements -> React Element
blockquote' = blockquote mempty mempty

body :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
body = createElementFromTagName T.Body

body' :: Elements -> React Element
body' = body mempty mempty

br :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
br = createElementFromTagName T.Br

br' :: Elements -> React Element
br' = br mempty mempty

button :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
button = createElementFromTagName T.Button

button' :: Elements -> React Element
button' = button mempty mempty

canvas :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
canvas = createElementFromTagName T.Canvas

canvas' :: Elements -> React Element
canvas' = canvas mempty mempty

caption :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
caption = createElementFromTagName T.Caption

caption' :: Elements -> React Element
caption' = caption mempty mempty

circle :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
circle = createElementFromTagName T.Circle

circle' :: Elements -> React Element
circle' = circle mempty mempty

cite :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
cite = createElementFromTagName T.Cite

cite' :: Elements -> React Element
cite' = cite mempty mempty

code :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
code = createElementFromTagName T.Code

code' :: Elements -> React Element
code' = code mempty mempty

col :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
col = createElementFromTagName T.Col

col' :: Elements -> React Element
col' = col mempty mempty

colgroup :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
colgroup = createElementFromTagName T.Colgroup

colgroup' :: Elements -> React Element
colgroup' = colgroup mempty mempty

_data :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
_data = createElementFromTagName T.Data

_data' :: Elements -> React Element
_data' = _data mempty mempty

datalist :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
datalist = createElementFromTagName T.Datalist

datalist' :: Elements -> React Element
datalist' = datalist mempty mempty

dd :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
dd = createElementFromTagName T.Dd

dd' :: Elements -> React Element
dd' = dd mempty mempty

defs :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
defs = createElementFromTagName T.Defs

defs' :: Elements -> React Element
defs' = defs mempty mempty

del :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
del = createElementFromTagName T.Del

del' :: Elements -> React Element
del' = del mempty mempty

details :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
details = createElementFromTagName T.Details

details' :: Elements -> React Element
details' = details mempty mempty

dfn :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
dfn = createElementFromTagName T.Dfn

dfn' :: Elements -> React Element
dfn' = dfn mempty mempty

dialog :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
dialog = createElementFromTagName T.Dialog

dialog' :: Elements -> React Element
dialog' = dialog mempty mempty

div :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
div = createElementFromTagName T.Div

div' :: Elements -> React Element
div' = div mempty mempty

dl :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
dl = createElementFromTagName T.Dl

dl' :: Elements -> React Element
dl' = dl mempty mempty

dt :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
dt = createElementFromTagName T.Dt

dt' :: Elements -> React Element
dt' = dt mempty mempty

ellipse :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
ellipse = createElementFromTagName T.Ellipse

ellipse' :: Elements -> React Element
ellipse' = ellipse mempty mempty

em :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
em = createElementFromTagName T.Em

em' :: Elements -> React Element
em' = em mempty mempty

embed :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
embed = createElementFromTagName T.Embed

embed' :: Elements -> React Element
embed' = embed mempty mempty

fieldset :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
fieldset = createElementFromTagName T.Fieldset

fieldset' :: Elements -> React Element
fieldset' = fieldset mempty mempty

figcaption :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
figcaption = createElementFromTagName T.Figcaption

figcaption' :: Elements -> React Element
figcaption' = figcaption mempty mempty

figure :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
figure = createElementFromTagName T.Figure

figure' :: Elements -> React Element
figure' = figure mempty mempty

footer :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
footer = createElementFromTagName T.Footer

footer' :: Elements -> React Element
footer' = footer mempty mempty

form :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
form = createElementFromTagName T.Form

form' :: Elements -> React Element
form' = form mempty mempty

g :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
g = createElementFromTagName T.G

g' :: Elements -> React Element
g' = g mempty mempty

h1 :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
h1 = createElementFromTagName T.H1

h1' :: Elements -> React Element
h1' = h1 mempty mempty

h2 :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
h2 = createElementFromTagName T.H2

h2' :: Elements -> React Element
h2' = h2 mempty mempty

h3 :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
h3 = createElementFromTagName T.H3

h3' :: Elements -> React Element
h3' = h3 mempty mempty

h4 :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
h4 = createElementFromTagName T.H4

h4' :: Elements -> React Element
h4' = h4 mempty mempty

h5 :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
h5 = createElementFromTagName T.H5

h5' :: Elements -> React Element
h5' = h5 mempty mempty

h6 :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
h6 = createElementFromTagName T.H6

h6' :: Elements -> React Element
h6' = h6 mempty mempty

head :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
head = createElementFromTagName T.Head

head' :: Elements -> React Element
head' = head mempty mempty

header :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
header = createElementFromTagName T.Header

header' :: Elements -> React Element
header' = header mempty mempty

hr :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
hr = createElementFromTagName T.Hr

hr' :: Elements -> React Element
hr' = hr mempty mempty

html :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
html = createElementFromTagName T.Html

html' :: Elements -> React Element
html' = html mempty mempty

i :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
i = createElementFromTagName T.I

i' :: Elements -> React Element
i' = i mempty mempty

iframe :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
iframe = createElementFromTagName T.Iframe

iframe' :: Elements -> React Element
iframe' = iframe mempty mempty

img :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
img = createElementFromTagName T.Img

img' :: Elements -> React Element
img' = img mempty mempty

input :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
input = createElementFromTagName T.Input

input' :: Elements -> React Element
input' = input mempty mempty

ins :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
ins = createElementFromTagName T.Ins

ins' :: Elements -> React Element
ins' = ins mempty mempty

kbd :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
kbd = createElementFromTagName T.Kbd

kbd' :: Elements -> React Element
kbd' = kbd mempty mempty

keygen :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
keygen = createElementFromTagName T.Keygen

keygen' :: Elements -> React Element
keygen' = keygen mempty mempty

label :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
label = createElementFromTagName T.Label

label' :: Elements -> React Element
label' = label mempty mempty

legend :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
legend = createElementFromTagName T.Legend

legend' :: Elements -> React Element
legend' = legend mempty mempty

li :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
li = createElementFromTagName T.Li

li' :: Elements -> React Element
li' = li mempty mempty

line :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
line = createElementFromTagName T.Line

line' :: Elements -> React Element
line' = line mempty mempty

linearGradient :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
linearGradient = createElementFromTagName T.LinearGradient

linearGradient' :: Elements -> React Element
linearGradient' = linearGradient mempty mempty

link :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
link = createElementFromTagName T.Link

link' :: Elements -> React Element
link' = link mempty mempty

main :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
main = createElementFromTagName T.Main

main' :: Elements -> React Element
main' = main mempty mempty

map :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
map = createElementFromTagName T.Map

map' :: Elements -> React Element
map' = map mempty mempty

mark :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
mark = createElementFromTagName T.Mark

mark' :: Elements -> React Element
mark' = mark mempty mempty

mask :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
mask = createElementFromTagName T.Mask

mask' :: Elements -> React Element
mask' = mask mempty mempty

menu :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
menu = createElementFromTagName T.Menu

menu' :: Elements -> React Element
menu' = menu mempty mempty

menuitem :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
menuitem = createElementFromTagName T.Menuitem

menuitem' :: Elements -> React Element
menuitem' = menuitem mempty mempty

meta :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
meta = createElementFromTagName T.Meta

meta' :: Elements -> React Element
meta' = meta mempty mempty

meter :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
meter = createElementFromTagName T.Meter

meter' :: Elements -> React Element
meter' = meter mempty mempty

nav :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
nav = createElementFromTagName T.Nav

nav' :: Elements -> React Element
nav' = nav mempty mempty

noscript :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
noscript = createElementFromTagName T.Noscript

noscript' :: Elements -> React Element
noscript' = noscript mempty mempty

object :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
object = createElementFromTagName T.Object

object' :: Elements -> React Element
object' = object mempty mempty

ol :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
ol = createElementFromTagName T.Ol

ol' :: Elements -> React Element
ol' = ol mempty mempty

optgroup :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
optgroup = createElementFromTagName T.Optgroup

optgroup' :: Elements -> React Element
optgroup' = optgroup mempty mempty

option :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
option = createElementFromTagName T.Option

option' :: Elements -> React Element
option' = option mempty mempty

output :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
output = createElementFromTagName T.Output

output' :: Elements -> React Element
output' = output mempty mempty

p :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
p = createElementFromTagName T.P

p' :: Elements -> React Element
p' = p mempty mempty

param :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
param = createElementFromTagName T.Param

param' :: Elements -> React Element
param' = param mempty mempty

path :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
path = createElementFromTagName T.Path

path' :: Elements -> React Element
path' = path mempty mempty

pattern :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
pattern = createElementFromTagName T.Pattern

pattern' :: Elements -> React Element
pattern' = pattern mempty mempty

picture :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
picture = createElementFromTagName T.Picture

picture' :: Elements -> React Element
picture' = picture mempty mempty

polygon :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
polygon = createElementFromTagName T.Polygon

polygon' :: Elements -> React Element
polygon' = polygon mempty mempty

polyline :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
polyline = createElementFromTagName T.Polyline

polyline' :: Elements -> React Element
polyline' = polyline mempty mempty

pre :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
pre = createElementFromTagName T.Pre

pre' :: Elements -> React Element
pre' = pre mempty mempty

progress :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
progress = createElementFromTagName T.Progress

progress' :: Elements -> React Element
progress' = progress mempty mempty

q :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
q = createElementFromTagName T.Q

q' :: Elements -> React Element
q' = q mempty mempty

radialGradient :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
radialGradient = createElementFromTagName T.RadialGradient

radialGradient' :: Elements -> React Element
radialGradient' = radialGradient mempty mempty

rect :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
rect = createElementFromTagName T.Rect

rect' :: Elements -> React Element
rect' = rect mempty mempty

rp :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
rp = createElementFromTagName T.Rp

rp' :: Elements -> React Element
rp' = rp mempty mempty

rt :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
rt = createElementFromTagName T.Rt

rt' :: Elements -> React Element
rt' = rt mempty mempty

ruby :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
ruby = createElementFromTagName T.Ruby

ruby' :: Elements -> React Element
ruby' = ruby mempty mempty

s :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
s = createElementFromTagName T.S

s' :: Elements -> React Element
s' = s mempty mempty

samp :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
samp = createElementFromTagName T.Samp

samp' :: Elements -> React Element
samp' = samp mempty mempty

script :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
script = createElementFromTagName T.Script

script' :: Elements -> React Element
script' = script mempty mempty

section :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
section = createElementFromTagName T.Section

section' :: Elements -> React Element
section' = section mempty mempty

select :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
select = createElementFromTagName T.Select

select' :: Elements -> React Element
select' = select mempty mempty

small :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
small = createElementFromTagName T.Small

small' :: Elements -> React Element
small' = small mempty mempty

source :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
source = createElementFromTagName T.Source

source' :: Elements -> React Element
source' = source mempty mempty

span :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
span = createElementFromTagName T.Span

span' :: Elements -> React Element
span' = span mempty mempty

stop :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
stop = createElementFromTagName T.Stop

stop' :: Elements -> React Element
stop' = stop mempty mempty

strong :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
strong = createElementFromTagName T.Strong

strong' :: Elements -> React Element
strong' = strong mempty mempty

style :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
style = createElementFromTagName T.Style

style' :: Elements -> React Element
style' = style mempty mempty

sub :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
sub = createElementFromTagName T.Sub

sub' :: Elements -> React Element
sub' = sub mempty mempty

summary :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
summary = createElementFromTagName T.Summary

summary' :: Elements -> React Element
summary' = summary mempty mempty

sup :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
sup = createElementFromTagName T.Sup

sup' :: Elements -> React Element
sup' = sup mempty mempty

svg :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
svg = createElementFromTagName T.Svg

svg' :: Elements -> React Element
svg' = svg mempty mempty

table :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
table = createElementFromTagName T.Table

table' :: Elements -> React Element
table' = table mempty mempty

tbody :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
tbody = createElementFromTagName T.Tbody

tbody' :: Elements -> React Element
tbody' = tbody mempty mempty

td :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
td = createElementFromTagName T.Td

td' :: Elements -> React Element
td' = td mempty mempty

text :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
text = createElementFromTagName T.Text

text' :: Elements -> React Element
text' = text mempty mempty

textarea :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
textarea = createElementFromTagName T.Textarea

textarea' :: Elements -> React Element
textarea' = textarea mempty mempty

tfoot :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
tfoot = createElementFromTagName T.Tfoot

tfoot' :: Elements -> React Element
tfoot' = tfoot mempty mempty

th :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
th = createElementFromTagName T.Th

th' :: Elements -> React Element
th' = th mempty mempty

thead :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
thead = createElementFromTagName T.Thead

thead' :: Elements -> React Element
thead' = thead mempty mempty

time :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
time = createElementFromTagName T.Time

time' :: Elements -> React Element
time' = time mempty mempty

title :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
title = createElementFromTagName T.Title

title' :: Elements -> React Element
title' = title mempty mempty

tr :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
tr = createElementFromTagName T.Tr

tr' :: Elements -> React Element
tr' = tr mempty mempty

track :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
track = createElementFromTagName T.Track

track' :: Elements -> React Element
track' = track mempty mempty

tspan :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
tspan = createElementFromTagName T.Tspan

tspan' :: Elements -> React Element
tspan' = tspan mempty mempty

u :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
u = createElementFromTagName T.U

u' :: Elements -> React Element
u' = u mempty mempty

ul :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
ul = createElementFromTagName T.Ul

ul' :: Elements -> React Element
ul' = ul mempty mempty

var :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
var = createElementFromTagName T.Var

var' :: Elements -> React Element
var' = var mempty mempty

video :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
video = createElementFromTagName T.Video

video' :: Elements -> React Element
video' = video mempty mempty

wbr :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
wbr = createElementFromTagName T.Wbr

wbr' :: Elements -> React Element
wbr' = wbr mempty mempty
