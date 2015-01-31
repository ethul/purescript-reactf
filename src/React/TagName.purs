module React.TagName (TagName(..)) where

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

instance showTagName :: Show TagName where
  show a = case a of
                Null -> "null"
                Textnode -> "textnode"
                A -> "a"
                Abbr -> "abbr"
                Address -> "address"
                Area -> "area"
                Article -> "article"
                Aside -> "aside"
                Audio -> "audio"
                B -> "b"
                Base -> "base"
                Bdi -> "bdi"
                Bdo -> "bdo"
                Big -> "big"
                Blockquote -> "blockquote"
                Body -> "body"
                Br -> "br"
                Button -> "button"
                Canvas -> "canvas"
                Caption -> "caption"
                Circle -> "circle"
                Cite -> "cite"
                Code -> "code"
                Col -> "col"
                Colgroup -> "colgroup"
                Data -> "data"
                Datalist -> "datalist"
                Dd -> "dd"
                Defs -> "defs"
                Del -> "del"
                Details -> "details"
                Dfn -> "dfn"
                Dialog -> "dialog"
                Div -> "div"
                Dl -> "dl"
                Dt -> "dt"
                Ellipse -> "ellipse"
                Em -> "em"
                Embed -> "embed"
                Fieldset -> "fieldset"
                Figcaption -> "figcaption"
                Figure -> "figure"
                Footer -> "footer"
                Form -> "form"
                G -> "g"
                H1 -> "h1"
                H2 -> "h2"
                H3 -> "h3"
                H4 -> "h4"
                H5 -> "h5"
                H6 -> "h6"
                Head -> "head"
                Header -> "header"
                Hr -> "hr"
                Html -> "html"
                I -> "i"
                Iframe -> "iframe"
                Img -> "img"
                Input -> "input"
                Ins -> "ins"
                Kbd -> "kbd"
                Keygen -> "keygen"
                Label -> "label"
                Legend -> "legend"
                Li -> "li"
                Line -> "line"
                LinearGradient -> "linearGradient"
                Link -> "link"
                Main -> "main"
                Map -> "map"
                Mark -> "mark"
                Mask -> "mask"
                Menu -> "menu"
                Menuitem -> "menuitem"
                Meta -> "meta"
                Meter -> "meter"
                Nav -> "nav"
                Noscript -> "noscript"
                Object -> "object"
                Ol -> "ol"
                Optgroup -> "optgroup"
                Option -> "option"
                Output -> "output"
                P -> "p"
                Param -> "param"
                Path -> "path"
                Pattern -> "pattern"
                Picture -> "picture"
                Polygon -> "polygon"
                Polyline -> "polyline"
                Pre -> "pre"
                Progress -> "progress"
                Q -> "q"
                RadialGradient -> "radialGradient"
                Rect -> "rect"
                Rp -> "rp"
                Rt -> "rt"
                Ruby -> "ruby"
                S -> "s"
                Samp -> "samp"
                Script -> "script"
                Section -> "section"
                Select -> "select"
                Small -> "small"
                Source -> "source"
                Span -> "span"
                Stop -> "stop"
                Strong -> "strong"
                Style -> "style"
                Sub -> "sub"
                Summary -> "summary"
                Sup -> "sup"
                Svg -> "svg"
                Table -> "table"
                Tbody -> "tbody"
                Td -> "td"
                Text -> "text"
                Textarea -> "textarea"
                Tfoot -> "tfoot"
                Th -> "th"
                Thead -> "thead"
                Time -> "time"
                Title -> "title"
                Tr -> "tr"
                Track -> "track"
                Tspan -> "tspan"
                U -> "u"
                Ul -> "ul"
                Var -> "var"
                Video -> "video"
                Wbr -> "wbr"
