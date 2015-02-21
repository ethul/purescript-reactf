module React.Attributes
  ( Attributes(..)
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

newtype Attributes = Attributes (Options Attribute)

instance semigroupAttributes :: Semigroup Attributes where
  (<>) (Attributes a) (Attributes b) = Attributes $ a <> b

instance monoidAttributes :: Monoid Attributes where
  mempty = Attributes mempty

data Attribute

foreign import accept "var accept = 'accept';" :: Option Attribute String

foreign import acceptCharset "var acceptCharset = 'acceptCharset';" :: Option Attribute String

foreign import accessKey "var accessKey = 'accessKey';" :: Option Attribute String

foreign import action "var action = 'action';" :: Option Attribute String

foreign import allowFullScreen "var allowFullScreen = 'allowFullScreen';" :: Option Attribute Boolean

foreign import allowTransparency "var allowTransparency = 'allowTransparency';" :: Option Attribute Boolean

foreign import alt "var alt = 'alt';" :: Option Attribute String

foreign import async "var async = 'async';" :: Option Attribute Boolean

foreign import aria "function aria(a){ return 'aria-' + a; }" :: String -> Option Attribute String

foreign import autoCapitalize "var autoCapitalize = 'autoCapitalize';" :: Option Attribute String

foreign import autoComplete "var autoComplete = 'autoComplete';" :: Option Attribute String

foreign import autoCorrect "var autoCorrect = 'autoCorrect';" :: Option Attribute String

foreign import autoPlay "var autoPlay = 'autoPlay';" :: Option Attribute Boolean

foreign import cellPadding "var cellPadding = 'cellPadding';" :: Option Attribute Number

foreign import cellSpacing "var cellSpacing = 'cellSpacing';" :: Option Attribute Number

foreign import charSet "var charSet = 'charSet';" :: Option Attribute String

foreign import checked "var checked = 'checked';" :: Option Attribute Boolean

foreign import classID "var classID = 'classID';" :: Option Attribute String

foreign import className "var className = 'className';" :: Option Attribute String

foreign import colSpan "var colSpan = 'colSpan';" :: Option Attribute Number

foreign import cols "var cols = 'cols';" :: Option Attribute Number

foreign import content "var content = 'content';" :: Option Attribute String

foreign import contentEditable "var contentEditable = 'contentEditable';" :: Option Attribute Boolean

foreign import contextMenu "var contextMenu = 'contextMenu';" :: Option Attribute String

foreign import controls "var controls = 'controls';" :: Option Attribute Boolean

foreign import coords "var coords = 'coords';" :: Option Attribute String

foreign import crossOrigin "var crossOrigin = 'crossOrigin';" :: Option Attribute String

foreign import cx "var cx = 'cx';" :: Option Attribute Number

foreign import cy "var cy = 'cy';" :: Option Attribute Number

foreign import d "var d = 'd';" :: Option Attribute String

foreign import dangerouslySetInnerHTML "var dangerouslySetInnerHTML = 'dangerouslySetInnerHTML';" :: Option Attribute { __html :: String }

foreign import _data "function _data(a){ return 'data-' + a; }" :: forall a. String -> Option Attribute a

foreign import _data' "var _data$prime = 'data';" :: Option Attribute String

foreign import dateTime "var dateTime = 'dateTime';" :: Option Attribute String

foreign import defer "var defer = 'defer';" :: Option Attribute Boolean

foreign import dir "var dir = 'dir';" :: Option Attribute String

foreign import disabled "var disabled = 'disabled';" :: Option Attribute Boolean

foreign import download "var download = 'download';" :: Option Attribute Boolean

foreign import draggable "var draggable = 'draggable';" :: Option Attribute Boolean

foreign import dx "var dx = 'dx';" :: Option Attribute Number

foreign import dy "var dy = 'dy';" :: Option Attribute Number

foreign import encType "var encType = 'encType';" :: Option Attribute String

foreign import fill "var fill = 'fill';" :: Option Attribute String

foreign import fillOpacity "var fillOpacity = 'fillOpacity';" :: Option Attribute Number

foreign import fontFamily "var fontFamily = 'fontFamily';" :: Option Attribute String

foreign import fontSize "var fontSize = 'fontSize';" :: Option Attribute String

foreign import form "var form = 'form';" :: Option Attribute String

foreign import formAction "var formAction = 'formAction';" :: Option Attribute String

foreign import formEncType "var formEncType = 'formEncType';" :: Option Attribute String

foreign import formMethod "var formMethod = 'formMethod';" :: Option Attribute String

foreign import formNoValidate "var formNoValidate = 'formNoValidate';" :: Option Attribute Boolean

foreign import formTarget "var formTarget = 'formTarget';" :: Option Attribute String

foreign import frameBorder "var frameBorder = 'frameBorder';" :: Option Attribute Number

foreign import fx "var fx = 'fx';" :: Option Attribute Number

foreign import fy "var fy = 'fy';" :: Option Attribute Number

foreign import gradientTransform "var gradientTransform = 'gradientTransform';" :: Option Attribute String

foreign import gradientUnits "var gradientUnits = 'gradientUnits';" :: Option Attribute String

foreign import height "var height = 'height';" :: Option Attribute String

foreign import hidden "var hidden = 'hidden';" :: Option Attribute String

foreign import href "var href = 'href';" :: Option Attribute String

foreign import hrefLang "var hrefLang = 'hrefLang';" :: Option Attribute String

foreign import htmlFor "var htmlFor = 'htmlFor';" :: Option Attribute String

foreign import httpEquiv "var httpEquiv = 'httpEquiv';" :: Option Attribute String

foreign import icon "var icon = 'icon';" :: Option Attribute String

foreign import id "var id = 'id';" :: Option Attribute String

foreign import itemProp "var itemProp = 'itemProp';" :: Option Attribute String

foreign import itemScope "var itemScope = 'itemScope';" :: Option Attribute String

foreign import itemType "var itemType = 'itemType';" :: Option Attribute String

foreign import key "var key = 'key';" :: Option Attribute String

foreign import label "var label = 'label';" :: Option Attribute String

foreign import lang "var lang = 'lang';" :: Option Attribute String

foreign import list "var list = 'list';" :: Option Attribute String

foreign import loop "var loop = 'loop';" :: Option Attribute Boolean

foreign import manifest "var manifest = 'manifest';" :: Option Attribute String

foreign import marginHeight "var marginHeight = 'marginHeight';" :: Option Attribute Number

foreign import marginWidth "var marginWidth = 'marginWidth';" :: Option Attribute Number

foreign import markerEnd "var markerEnd = 'markerEnd';" :: Option Attribute String

foreign import markerMid "var markerMid = 'markerMid';" :: Option Attribute String

foreign import markerStart "var markerStart = 'markerStart';" :: Option Attribute String

foreign import max "var max = 'max';" :: Option Attribute Number

foreign import maxLength "var maxLength = 'maxLength';" :: Option Attribute Number

foreign import media "var media = 'media';" :: Option Attribute String

foreign import mediaGroup "var mediaGroup = 'mediaGroup';" :: Option Attribute String

foreign import method "var method = 'method';" :: Option Attribute String

foreign import min "var min = 'min';" :: Option Attribute Number

foreign import multiple "var multiple = 'multiple';" :: Option Attribute Boolean

foreign import muted "var muted = 'muted';" :: Option Attribute Boolean

foreign import name "var name = 'name';" :: Option Attribute String

foreign import noValidate "var noValidate = 'noValidate';" :: Option Attribute Boolean

foreign import offset "var offset = 'offset';" :: Option Attribute String

foreign import opacity "var opacity = 'opacity';" :: Option Attribute Number

foreign import open "var open = 'open';" :: Option Attribute String

foreign import pattern "var pattern = 'pattern';" :: Option Attribute String

foreign import patternContentUnits "var patternContentUnits = 'patternContentUnits';" :: Option Attribute String

foreign import patternUnits "var patternUnits = 'patternUnits';" :: Option Attribute String

foreign import placeholder "var placeholder = 'placeholder';" :: Option Attribute String

foreign import points "var points = 'points';" :: Option Attribute String

foreign import poster "var poster = 'poster';" :: Option Attribute String

foreign import preload "var preload = 'preload';" :: Option Attribute String

foreign import preserveAspectRatio "var preserveAspectRatio = 'preserveAspectRatio';" :: Option Attribute String

foreign import property "var property = 'property';" :: Option Attribute String

foreign import r "var r = 'r';" :: Option Attribute Number

foreign import radioGroup "var radioGroup = 'radioGroup';" :: Option Attribute String

foreign import readOnly "var readOnly = 'readOnly';" :: Option Attribute Boolean

foreign import ref "var ref = 'ref';" :: Option Attribute String

foreign import rel "var rel = 'rel';" :: Option Attribute String

foreign import required "var required = 'required';" :: Option Attribute Boolean

foreign import role "var role = 'role';" :: Option Attribute String

foreign import rowSpan "var rowSpan = 'rowSpan';" :: Option Attribute Number

foreign import rows "var rows = 'rows';" :: Option Attribute Number

foreign import rx "var rx = 'rx';" :: Option Attribute Number

foreign import ry "var ry = 'ry';" :: Option Attribute Number

foreign import sandbox "var sandbox = 'sandbox';" :: Option Attribute String

foreign import scope "var scope = 'scope';" :: Option Attribute String

foreign import scrolling "var scrolling = 'scrolling';" :: Option Attribute String

foreign import seamless "var seamless = 'seamless';" :: Option Attribute Boolean

foreign import selected "var selected = 'selected';" :: Option Attribute Boolean

foreign import shape "var shape = 'shape';" :: Option Attribute String

foreign import size "var size = 'size';" :: Option Attribute Number

foreign import sizes "var sizes = 'sizes';" :: Option Attribute String

foreign import span "var span = 'span';" :: Option Attribute Number

foreign import spellCheck "var spellCheck = 'spellCheck';" :: Option Attribute Boolean

foreign import spreadMethod "var spreadMethod = 'spreadMethod';" :: Option Attribute String

foreign import src "var src = 'src';" :: Option Attribute String

foreign import srcDoc "var srcDoc = 'srcDoc';" :: Option Attribute String

foreign import srcSet "var srcSet = 'srcSet';" :: Option Attribute String

foreign import start "var start = 'start';" :: Option Attribute String

foreign import step "var step = 'step';" :: Option Attribute Number

foreign import stopColor "var stopColor = 'stopColor';" :: Option Attribute String

foreign import stopOpacity "var stopOpacity = 'stopOpacity';" :: Option Attribute Number

foreign import stroke "var stroke = 'stroke';" :: Option Attribute String

foreign import strokeDasharray "var strokeDasharray = 'strokeDasharray';" :: Option Attribute String

foreign import strokeLinecap "var strokeLinecap = 'strokeLinecap';" :: Option Attribute String

foreign import strokeOpacity "var strokeOpacity = 'strokeOpacity';" :: Option Attribute Number

foreign import strokeWidth "var strokeWidth = 'strokeWidth';" :: Option Attribute String

foreign import style "var style = 'style';" :: forall a. Option Attribute { | a }

foreign import tabIndex "var tabIndex = 'tabIndex';" :: Option Attribute Number

foreign import target "var target = 'target';" :: Option Attribute String

foreign import textAnchor "var textAnchor = 'textAnchor';" :: Option Attribute String

foreign import title "var title = 'title';" :: Option Attribute String

foreign import transform "var transform = 'transform';" :: Option Attribute String

foreign import _type "var _type = 'type';" :: Option Attribute String

foreign import useMap "var useMap = 'useMap';" :: Option Attribute String

foreign import value "var value = 'value';" :: Option Attribute String

foreign import version "var version = 'version';" :: Option Attribute String

foreign import viewBox "var viewBox = 'viewBox';" :: Option Attribute String

foreign import width "var width = 'width';" :: Option Attribute String

foreign import wmode "var wmode = 'wmode';" :: Option Attribute String

foreign import x "var x = 'x';" :: Option Attribute Number

foreign import x1 "var x1 = 'x1';" :: Option Attribute Number

foreign import x2 "var x2 = 'x2';" :: Option Attribute Number

foreign import y "var y = 'y';" :: Option Attribute Number

foreign import y1 "var y1 = 'y1';" :: Option Attribute Number

foreign import y2 "var y2 = 'y2';" :: Option Attribute Number
