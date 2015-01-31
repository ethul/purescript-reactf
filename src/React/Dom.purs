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

import React.Attributes (Attributes(..))
import React.Events (Events(..))
import React.ReactF (Element(), Elements(), React(), createElementFromTagName)
import qualified React.TagName as T

null :: React Element
null = createElementFromTagName T.Null (Attributes mempty) (Events mempty) mempty

textnode :: String -> React Element
textnode a = createElementFromTagName T.Textnode (Attributes mempty) (Events mempty) [toTextnode a]

foreign import toTextnode "function toTextnode(a){return a;}" :: String -> Element

a :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
a = createElementFromTagName T.A

a' :: Elements -> React Element
a' = a (Attributes mempty) (Events mempty)

abbr :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
abbr = createElementFromTagName T.Abbr

abbr' :: Elements -> React Element
abbr' = abbr (Attributes mempty) (Events mempty)

address :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
address = createElementFromTagName T.Address

address' :: Elements -> React Element
address' = address (Attributes mempty) (Events mempty)

area :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
area = createElementFromTagName T.Area

area' :: Elements -> React Element
area' = area (Attributes mempty) (Events mempty)

article :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
article = createElementFromTagName T.Article

article' :: Elements -> React Element
article' = article (Attributes mempty) (Events mempty)

aside :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
aside = createElementFromTagName T.Aside

aside' :: Elements -> React Element
aside' = aside (Attributes mempty) (Events mempty)

audio :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
audio = createElementFromTagName T.Audio

audio' :: Elements -> React Element
audio' = audio (Attributes mempty) (Events mempty)

b :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
b = createElementFromTagName T.B

b' :: Elements -> React Element
b' = b (Attributes mempty) (Events mempty)

base :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
base = createElementFromTagName T.Base

base' :: Elements -> React Element
base' = base (Attributes mempty) (Events mempty)

bdi :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
bdi = createElementFromTagName T.Bdi

bdi' :: Elements -> React Element
bdi' = bdi (Attributes mempty) (Events mempty)

bdo :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
bdo = createElementFromTagName T.Bdo

bdo' :: Elements -> React Element
bdo' = bdo (Attributes mempty) (Events mempty)

big :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
big = createElementFromTagName T.Big

big' :: Elements -> React Element
big' = big (Attributes mempty) (Events mempty)

blockquote :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
blockquote = createElementFromTagName T.Blockquote

blockquote' :: Elements -> React Element
blockquote' = blockquote (Attributes mempty) (Events mempty)

body :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
body = createElementFromTagName T.Body

body' :: Elements -> React Element
body' = body (Attributes mempty) (Events mempty)

br :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
br = createElementFromTagName T.Br

br' :: Elements -> React Element
br' = br (Attributes mempty) (Events mempty)

button :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
button = createElementFromTagName T.Button

button' :: Elements -> React Element
button' = button (Attributes mempty) (Events mempty)

canvas :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
canvas = createElementFromTagName T.Canvas

canvas' :: Elements -> React Element
canvas' = canvas (Attributes mempty) (Events mempty)

caption :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
caption = createElementFromTagName T.Caption

caption' :: Elements -> React Element
caption' = caption (Attributes mempty) (Events mempty)

circle :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
circle = createElementFromTagName T.Circle

circle' :: Elements -> React Element
circle' = circle (Attributes mempty) (Events mempty)

cite :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
cite = createElementFromTagName T.Cite

cite' :: Elements -> React Element
cite' = cite (Attributes mempty) (Events mempty)

code :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
code = createElementFromTagName T.Code

code' :: Elements -> React Element
code' = code (Attributes mempty) (Events mempty)

col :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
col = createElementFromTagName T.Col

col' :: Elements -> React Element
col' = col (Attributes mempty) (Events mempty)

colgroup :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
colgroup = createElementFromTagName T.Colgroup

colgroup' :: Elements -> React Element
colgroup' = colgroup (Attributes mempty) (Events mempty)

_data :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
_data = createElementFromTagName T.Data

_data' :: Elements -> React Element
_data' = _data (Attributes mempty) (Events mempty)

datalist :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
datalist = createElementFromTagName T.Datalist

datalist' :: Elements -> React Element
datalist' = datalist (Attributes mempty) (Events mempty)

dd :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
dd = createElementFromTagName T.Dd

dd' :: Elements -> React Element
dd' = dd (Attributes mempty) (Events mempty)

defs :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
defs = createElementFromTagName T.Defs

defs' :: Elements -> React Element
defs' = defs (Attributes mempty) (Events mempty)

del :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
del = createElementFromTagName T.Del

del' :: Elements -> React Element
del' = del (Attributes mempty) (Events mempty)

details :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
details = createElementFromTagName T.Details

details' :: Elements -> React Element
details' = details (Attributes mempty) (Events mempty)

dfn :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
dfn = createElementFromTagName T.Dfn

dfn' :: Elements -> React Element
dfn' = dfn (Attributes mempty) (Events mempty)

dialog :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
dialog = createElementFromTagName T.Dialog

dialog' :: Elements -> React Element
dialog' = dialog (Attributes mempty) (Events mempty)

div :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
div = createElementFromTagName T.Div

div' :: Elements -> React Element
div' = div (Attributes mempty) (Events mempty)

dl :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
dl = createElementFromTagName T.Dl

dl' :: Elements -> React Element
dl' = dl (Attributes mempty) (Events mempty)

dt :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
dt = createElementFromTagName T.Dt

dt' :: Elements -> React Element
dt' = dt (Attributes mempty) (Events mempty)

ellipse :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
ellipse = createElementFromTagName T.Ellipse

ellipse' :: Elements -> React Element
ellipse' = ellipse (Attributes mempty) (Events mempty)

em :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
em = createElementFromTagName T.Em

em' :: Elements -> React Element
em' = em (Attributes mempty) (Events mempty)

embed :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
embed = createElementFromTagName T.Embed

embed' :: Elements -> React Element
embed' = embed (Attributes mempty) (Events mempty)

fieldset :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
fieldset = createElementFromTagName T.Fieldset

fieldset' :: Elements -> React Element
fieldset' = fieldset (Attributes mempty) (Events mempty)

figcaption :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
figcaption = createElementFromTagName T.Figcaption

figcaption' :: Elements -> React Element
figcaption' = figcaption (Attributes mempty) (Events mempty)

figure :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
figure = createElementFromTagName T.Figure

figure' :: Elements -> React Element
figure' = figure (Attributes mempty) (Events mempty)

footer :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
footer = createElementFromTagName T.Footer

footer' :: Elements -> React Element
footer' = footer (Attributes mempty) (Events mempty)

form :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
form = createElementFromTagName T.Form

form' :: Elements -> React Element
form' = form (Attributes mempty) (Events mempty)

g :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
g = createElementFromTagName T.G

g' :: Elements -> React Element
g' = g (Attributes mempty) (Events mempty)

h1 :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
h1 = createElementFromTagName T.H1

h1' :: Elements -> React Element
h1' = h1 (Attributes mempty) (Events mempty)

h2 :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
h2 = createElementFromTagName T.H2

h2' :: Elements -> React Element
h2' = h2 (Attributes mempty) (Events mempty)

h3 :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
h3 = createElementFromTagName T.H3

h3' :: Elements -> React Element
h3' = h3 (Attributes mempty) (Events mempty)

h4 :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
h4 = createElementFromTagName T.H4

h4' :: Elements -> React Element
h4' = h4 (Attributes mempty) (Events mempty)

h5 :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
h5 = createElementFromTagName T.H5

h5' :: Elements -> React Element
h5' = h5 (Attributes mempty) (Events mempty)

h6 :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
h6 = createElementFromTagName T.H6

h6' :: Elements -> React Element
h6' = h6 (Attributes mempty) (Events mempty)

head :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
head = createElementFromTagName T.Head

head' :: Elements -> React Element
head' = head (Attributes mempty) (Events mempty)

header :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
header = createElementFromTagName T.Header

header' :: Elements -> React Element
header' = header (Attributes mempty) (Events mempty)

hr :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
hr = createElementFromTagName T.Hr

hr' :: Elements -> React Element
hr' = hr (Attributes mempty) (Events mempty)

html :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
html = createElementFromTagName T.Html

html' :: Elements -> React Element
html' = html (Attributes mempty) (Events mempty)

i :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
i = createElementFromTagName T.I

i' :: Elements -> React Element
i' = i (Attributes mempty) (Events mempty)

iframe :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
iframe = createElementFromTagName T.Iframe

iframe' :: Elements -> React Element
iframe' = iframe (Attributes mempty) (Events mempty)

img :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
img = createElementFromTagName T.Img

img' :: Elements -> React Element
img' = img (Attributes mempty) (Events mempty)

input :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
input = createElementFromTagName T.Input

input' :: Elements -> React Element
input' = input (Attributes mempty) (Events mempty)

ins :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
ins = createElementFromTagName T.Ins

ins' :: Elements -> React Element
ins' = ins (Attributes mempty) (Events mempty)

kbd :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
kbd = createElementFromTagName T.Kbd

kbd' :: Elements -> React Element
kbd' = kbd (Attributes mempty) (Events mempty)

keygen :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
keygen = createElementFromTagName T.Keygen

keygen' :: Elements -> React Element
keygen' = keygen (Attributes mempty) (Events mempty)

label :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
label = createElementFromTagName T.Label

label' :: Elements -> React Element
label' = label (Attributes mempty) (Events mempty)

legend :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
legend = createElementFromTagName T.Legend

legend' :: Elements -> React Element
legend' = legend (Attributes mempty) (Events mempty)

li :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
li = createElementFromTagName T.Li

li' :: Elements -> React Element
li' = li (Attributes mempty) (Events mempty)

line :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
line = createElementFromTagName T.Line

line' :: Elements -> React Element
line' = line (Attributes mempty) (Events mempty)

linearGradient :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
linearGradient = createElementFromTagName T.LinearGradient

linearGradient' :: Elements -> React Element
linearGradient' = linearGradient (Attributes mempty) (Events mempty)

link :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
link = createElementFromTagName T.Link

link' :: Elements -> React Element
link' = link (Attributes mempty) (Events mempty)

main :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
main = createElementFromTagName T.Main

main' :: Elements -> React Element
main' = main (Attributes mempty) (Events mempty)

map :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
map = createElementFromTagName T.Map

map' :: Elements -> React Element
map' = map (Attributes mempty) (Events mempty)

mark :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
mark = createElementFromTagName T.Mark

mark' :: Elements -> React Element
mark' = mark (Attributes mempty) (Events mempty)

mask :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
mask = createElementFromTagName T.Mask

mask' :: Elements -> React Element
mask' = mask (Attributes mempty) (Events mempty)

menu :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
menu = createElementFromTagName T.Menu

menu' :: Elements -> React Element
menu' = menu (Attributes mempty) (Events mempty)

menuitem :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
menuitem = createElementFromTagName T.Menuitem

menuitem' :: Elements -> React Element
menuitem' = menuitem (Attributes mempty) (Events mempty)

meta :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
meta = createElementFromTagName T.Meta

meta' :: Elements -> React Element
meta' = meta (Attributes mempty) (Events mempty)

meter :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
meter = createElementFromTagName T.Meter

meter' :: Elements -> React Element
meter' = meter (Attributes mempty) (Events mempty)

nav :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
nav = createElementFromTagName T.Nav

nav' :: Elements -> React Element
nav' = nav (Attributes mempty) (Events mempty)

noscript :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
noscript = createElementFromTagName T.Noscript

noscript' :: Elements -> React Element
noscript' = noscript (Attributes mempty) (Events mempty)

object :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
object = createElementFromTagName T.Object

object' :: Elements -> React Element
object' = object (Attributes mempty) (Events mempty)

ol :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
ol = createElementFromTagName T.Ol

ol' :: Elements -> React Element
ol' = ol (Attributes mempty) (Events mempty)

optgroup :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
optgroup = createElementFromTagName T.Optgroup

optgroup' :: Elements -> React Element
optgroup' = optgroup (Attributes mempty) (Events mempty)

option :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
option = createElementFromTagName T.Option

option' :: Elements -> React Element
option' = option (Attributes mempty) (Events mempty)

output :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
output = createElementFromTagName T.Output

output' :: Elements -> React Element
output' = output (Attributes mempty) (Events mempty)

p :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
p = createElementFromTagName T.P

p' :: Elements -> React Element
p' = p (Attributes mempty) (Events mempty)

param :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
param = createElementFromTagName T.Param

param' :: Elements -> React Element
param' = param (Attributes mempty) (Events mempty)

path :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
path = createElementFromTagName T.Path

path' :: Elements -> React Element
path' = path (Attributes mempty) (Events mempty)

pattern :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
pattern = createElementFromTagName T.Pattern

pattern' :: Elements -> React Element
pattern' = pattern (Attributes mempty) (Events mempty)

picture :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
picture = createElementFromTagName T.Picture

picture' :: Elements -> React Element
picture' = picture (Attributes mempty) (Events mempty)

polygon :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
polygon = createElementFromTagName T.Polygon

polygon' :: Elements -> React Element
polygon' = polygon (Attributes mempty) (Events mempty)

polyline :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
polyline = createElementFromTagName T.Polyline

polyline' :: Elements -> React Element
polyline' = polyline (Attributes mempty) (Events mempty)

pre :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
pre = createElementFromTagName T.Pre

pre' :: Elements -> React Element
pre' = pre (Attributes mempty) (Events mempty)

progress :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
progress = createElementFromTagName T.Progress

progress' :: Elements -> React Element
progress' = progress (Attributes mempty) (Events mempty)

q :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
q = createElementFromTagName T.Q

q' :: Elements -> React Element
q' = q (Attributes mempty) (Events mempty)

radialGradient :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
radialGradient = createElementFromTagName T.RadialGradient

radialGradient' :: Elements -> React Element
radialGradient' = radialGradient (Attributes mempty) (Events mempty)

rect :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
rect = createElementFromTagName T.Rect

rect' :: Elements -> React Element
rect' = rect (Attributes mempty) (Events mempty)

rp :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
rp = createElementFromTagName T.Rp

rp' :: Elements -> React Element
rp' = rp (Attributes mempty) (Events mempty)

rt :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
rt = createElementFromTagName T.Rt

rt' :: Elements -> React Element
rt' = rt (Attributes mempty) (Events mempty)

ruby :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
ruby = createElementFromTagName T.Ruby

ruby' :: Elements -> React Element
ruby' = ruby (Attributes mempty) (Events mempty)

s :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
s = createElementFromTagName T.S

s' :: Elements -> React Element
s' = s (Attributes mempty) (Events mempty)

samp :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
samp = createElementFromTagName T.Samp

samp' :: Elements -> React Element
samp' = samp (Attributes mempty) (Events mempty)

script :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
script = createElementFromTagName T.Script

script' :: Elements -> React Element
script' = script (Attributes mempty) (Events mempty)

section :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
section = createElementFromTagName T.Section

section' :: Elements -> React Element
section' = section (Attributes mempty) (Events mempty)

select :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
select = createElementFromTagName T.Select

select' :: Elements -> React Element
select' = select (Attributes mempty) (Events mempty)

small :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
small = createElementFromTagName T.Small

small' :: Elements -> React Element
small' = small (Attributes mempty) (Events mempty)

source :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
source = createElementFromTagName T.Source

source' :: Elements -> React Element
source' = source (Attributes mempty) (Events mempty)

span :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
span = createElementFromTagName T.Span

span' :: Elements -> React Element
span' = span (Attributes mempty) (Events mempty)

stop :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
stop = createElementFromTagName T.Stop

stop' :: Elements -> React Element
stop' = stop (Attributes mempty) (Events mempty)

strong :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
strong = createElementFromTagName T.Strong

strong' :: Elements -> React Element
strong' = strong (Attributes mempty) (Events mempty)

style :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
style = createElementFromTagName T.Style

style' :: Elements -> React Element
style' = style (Attributes mempty) (Events mempty)

sub :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
sub = createElementFromTagName T.Sub

sub' :: Elements -> React Element
sub' = sub (Attributes mempty) (Events mempty)

summary :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
summary = createElementFromTagName T.Summary

summary' :: Elements -> React Element
summary' = summary (Attributes mempty) (Events mempty)

sup :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
sup = createElementFromTagName T.Sup

sup' :: Elements -> React Element
sup' = sup (Attributes mempty) (Events mempty)

svg :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
svg = createElementFromTagName T.Svg

svg' :: Elements -> React Element
svg' = svg (Attributes mempty) (Events mempty)

table :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
table = createElementFromTagName T.Table

table' :: Elements -> React Element
table' = table (Attributes mempty) (Events mempty)

tbody :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
tbody = createElementFromTagName T.Tbody

tbody' :: Elements -> React Element
tbody' = tbody (Attributes mempty) (Events mempty)

td :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
td = createElementFromTagName T.Td

td' :: Elements -> React Element
td' = td (Attributes mempty) (Events mempty)

text :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
text = createElementFromTagName T.Text

text' :: Elements -> React Element
text' = text (Attributes mempty) (Events mempty)

textarea :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
textarea = createElementFromTagName T.Textarea

textarea' :: Elements -> React Element
textarea' = textarea (Attributes mempty) (Events mempty)

tfoot :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
tfoot = createElementFromTagName T.Tfoot

tfoot' :: Elements -> React Element
tfoot' = tfoot (Attributes mempty) (Events mempty)

th :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
th = createElementFromTagName T.Th

th' :: Elements -> React Element
th' = th (Attributes mempty) (Events mempty)

thead :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
thead = createElementFromTagName T.Thead

thead' :: Elements -> React Element
thead' = thead (Attributes mempty) (Events mempty)

time :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
time = createElementFromTagName T.Time

time' :: Elements -> React Element
time' = time (Attributes mempty) (Events mempty)

title :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
title = createElementFromTagName T.Title

title' :: Elements -> React Element
title' = title (Attributes mempty) (Events mempty)

tr :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
tr = createElementFromTagName T.Tr

tr' :: Elements -> React Element
tr' = tr (Attributes mempty) (Events mempty)

track :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
track = createElementFromTagName T.Track

track' :: Elements -> React Element
track' = track (Attributes mempty) (Events mempty)

tspan :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
tspan = createElementFromTagName T.Tspan

tspan' :: Elements -> React Element
tspan' = tspan (Attributes mempty) (Events mempty)

u :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
u = createElementFromTagName T.U

u' :: Elements -> React Element
u' = u (Attributes mempty) (Events mempty)

ul :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
ul = createElementFromTagName T.Ul

ul' :: Elements -> React Element
ul' = ul (Attributes mempty) (Events mempty)

var :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
var = createElementFromTagName T.Var

var' :: Elements -> React Element
var' = var (Attributes mempty) (Events mempty)

video :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
video = createElementFromTagName T.Video

video' :: Elements -> React Element
video' = video (Attributes mempty) (Events mempty)

wbr :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element
wbr = createElementFromTagName T.Wbr

wbr' :: Elements -> React Element
wbr' = wbr (Attributes mempty) (Events mempty)
