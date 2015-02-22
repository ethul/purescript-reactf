# Module Documentation

## Module React.Attributes

### Types

#### `Attribute`

    data Attribute

#### `Attributes`

    newtype Attributes
      = Attributes (Options Attribute)


### Type Class Instances

#### `monoidAttributes`

    instance monoidAttributes :: Monoid Attributes

#### `semigroupAttributes`

    instance semigroupAttributes :: Semigroup Attributes


### Values

#### `_data`

    _data :: forall a. String -> Option Attribute a

#### `_data'`

    _data' :: Option Attribute String

#### `_type`

    _type :: Option Attribute String

#### `accept`

    accept :: Option Attribute String

#### `acceptCharset`

    acceptCharset :: Option Attribute String

#### `accessKey`

    accessKey :: Option Attribute String

#### `action`

    action :: Option Attribute String

#### `allowFullScreen`

    allowFullScreen :: Option Attribute Boolean

#### `allowTransparency`

    allowTransparency :: Option Attribute Boolean

#### `alt`

    alt :: Option Attribute String

#### `aria`

    aria :: String -> Option Attribute String

#### `async`

    async :: Option Attribute Boolean

#### `autoCapitalize`

    autoCapitalize :: Option Attribute String

#### `autoComplete`

    autoComplete :: Option Attribute String

#### `autoCorrect`

    autoCorrect :: Option Attribute String

#### `autoPlay`

    autoPlay :: Option Attribute Boolean

#### `cellPadding`

    cellPadding :: Option Attribute Number

#### `cellSpacing`

    cellSpacing :: Option Attribute Number

#### `charSet`

    charSet :: Option Attribute String

#### `checked`

    checked :: Option Attribute Boolean

#### `classID`

    classID :: Option Attribute String

#### `className`

    className :: Option Attribute String

#### `colSpan`

    colSpan :: Option Attribute Number

#### `cols`

    cols :: Option Attribute Number

#### `content`

    content :: Option Attribute String

#### `contentEditable`

    contentEditable :: Option Attribute Boolean

#### `contextMenu`

    contextMenu :: Option Attribute String

#### `controls`

    controls :: Option Attribute Boolean

#### `coords`

    coords :: Option Attribute String

#### `crossOrigin`

    crossOrigin :: Option Attribute String

#### `cx`

    cx :: Option Attribute Number

#### `cy`

    cy :: Option Attribute Number

#### `d`

    d :: Option Attribute String

#### `dangerouslySetInnerHTML`

    dangerouslySetInnerHTML :: Option Attribute { __html :: String }

#### `dateTime`

    dateTime :: Option Attribute String

#### `defer`

    defer :: Option Attribute Boolean

#### `dir`

    dir :: Option Attribute String

#### `disabled`

    disabled :: Option Attribute Boolean

#### `download`

    download :: Option Attribute Boolean

#### `draggable`

    draggable :: Option Attribute Boolean

#### `dx`

    dx :: Option Attribute Number

#### `dy`

    dy :: Option Attribute Number

#### `encType`

    encType :: Option Attribute String

#### `fill`

    fill :: Option Attribute String

#### `fillOpacity`

    fillOpacity :: Option Attribute Number

#### `fontFamily`

    fontFamily :: Option Attribute String

#### `fontSize`

    fontSize :: Option Attribute String

#### `form`

    form :: Option Attribute String

#### `formAction`

    formAction :: Option Attribute String

#### `formEncType`

    formEncType :: Option Attribute String

#### `formMethod`

    formMethod :: Option Attribute String

#### `formNoValidate`

    formNoValidate :: Option Attribute Boolean

#### `formTarget`

    formTarget :: Option Attribute String

#### `frameBorder`

    frameBorder :: Option Attribute Number

#### `fx`

    fx :: Option Attribute Number

#### `fy`

    fy :: Option Attribute Number

#### `gradientTransform`

    gradientTransform :: Option Attribute String

#### `gradientUnits`

    gradientUnits :: Option Attribute String

#### `height`

    height :: Option Attribute String

#### `hidden`

    hidden :: Option Attribute String

#### `href`

    href :: Option Attribute String

#### `hrefLang`

    hrefLang :: Option Attribute String

#### `htmlFor`

    htmlFor :: Option Attribute String

#### `httpEquiv`

    httpEquiv :: Option Attribute String

#### `icon`

    icon :: Option Attribute String

#### `id`

    id :: Option Attribute String

#### `itemProp`

    itemProp :: Option Attribute String

#### `itemScope`

    itemScope :: Option Attribute String

#### `itemType`

    itemType :: Option Attribute String

#### `key`

    key :: Option Attribute String

#### `label`

    label :: Option Attribute String

#### `lang`

    lang :: Option Attribute String

#### `list`

    list :: Option Attribute String

#### `loop`

    loop :: Option Attribute Boolean

#### `manifest`

    manifest :: Option Attribute String

#### `marginHeight`

    marginHeight :: Option Attribute Number

#### `marginWidth`

    marginWidth :: Option Attribute Number

#### `markerEnd`

    markerEnd :: Option Attribute String

#### `markerMid`

    markerMid :: Option Attribute String

#### `markerStart`

    markerStart :: Option Attribute String

#### `max`

    max :: Option Attribute Number

#### `maxLength`

    maxLength :: Option Attribute Number

#### `media`

    media :: Option Attribute String

#### `mediaGroup`

    mediaGroup :: Option Attribute String

#### `method`

    method :: Option Attribute String

#### `min`

    min :: Option Attribute Number

#### `multiple`

    multiple :: Option Attribute Boolean

#### `muted`

    muted :: Option Attribute Boolean

#### `name`

    name :: Option Attribute String

#### `noValidate`

    noValidate :: Option Attribute Boolean

#### `offset`

    offset :: Option Attribute String

#### `opacity`

    opacity :: Option Attribute Number

#### `open`

    open :: Option Attribute String

#### `pattern`

    pattern :: Option Attribute String

#### `patternContentUnits`

    patternContentUnits :: Option Attribute String

#### `patternUnits`

    patternUnits :: Option Attribute String

#### `placeholder`

    placeholder :: Option Attribute String

#### `points`

    points :: Option Attribute String

#### `poster`

    poster :: Option Attribute String

#### `preload`

    preload :: Option Attribute String

#### `preserveAspectRatio`

    preserveAspectRatio :: Option Attribute String

#### `property`

    property :: Option Attribute String

#### `r`

    r :: Option Attribute Number

#### `radioGroup`

    radioGroup :: Option Attribute String

#### `readOnly`

    readOnly :: Option Attribute Boolean

#### `ref`

    ref :: Option Attribute String

#### `rel`

    rel :: Option Attribute String

#### `required`

    required :: Option Attribute Boolean

#### `role`

    role :: Option Attribute String

#### `rowSpan`

    rowSpan :: Option Attribute Number

#### `rows`

    rows :: Option Attribute Number

#### `rx`

    rx :: Option Attribute Number

#### `ry`

    ry :: Option Attribute Number

#### `sandbox`

    sandbox :: Option Attribute String

#### `scope`

    scope :: Option Attribute String

#### `scrolling`

    scrolling :: Option Attribute String

#### `seamless`

    seamless :: Option Attribute Boolean

#### `selected`

    selected :: Option Attribute Boolean

#### `shape`

    shape :: Option Attribute String

#### `size`

    size :: Option Attribute Number

#### `sizes`

    sizes :: Option Attribute String

#### `span`

    span :: Option Attribute Number

#### `spellCheck`

    spellCheck :: Option Attribute Boolean

#### `spreadMethod`

    spreadMethod :: Option Attribute String

#### `src`

    src :: Option Attribute String

#### `srcDoc`

    srcDoc :: Option Attribute String

#### `srcSet`

    srcSet :: Option Attribute String

#### `start`

    start :: Option Attribute String

#### `step`

    step :: Option Attribute Number

#### `stopColor`

    stopColor :: Option Attribute String

#### `stopOpacity`

    stopOpacity :: Option Attribute Number

#### `stroke`

    stroke :: Option Attribute String

#### `strokeDasharray`

    strokeDasharray :: Option Attribute String

#### `strokeLinecap`

    strokeLinecap :: Option Attribute String

#### `strokeOpacity`

    strokeOpacity :: Option Attribute Number

#### `strokeWidth`

    strokeWidth :: Option Attribute String

#### `style`

    style :: forall a. Option Attribute {  | a }

#### `tabIndex`

    tabIndex :: Option Attribute Number

#### `target`

    target :: Option Attribute String

#### `textAnchor`

    textAnchor :: Option Attribute String

#### `title`

    title :: Option Attribute String

#### `transform`

    transform :: Option Attribute String

#### `useMap`

    useMap :: Option Attribute String

#### `value`

    value :: Option Attribute String

#### `version`

    version :: Option Attribute String

#### `viewBox`

    viewBox :: Option Attribute String

#### `width`

    width :: Option Attribute String

#### `wmode`

    wmode :: Option Attribute String

#### `x`

    x :: Option Attribute Number

#### `x1`

    x1 :: Option Attribute Number

#### `x2`

    x2 :: Option Attribute Number

#### `y`

    y :: Option Attribute Number

#### `y1`

    y1 :: Option Attribute Number

#### `y2`

    y2 :: Option Attribute Number


## Module React.Combinators

### Values

#### `(|*)`

    (|*) :: (Elements -> React Element) -> [React Element] -> React Element

#### `(|-)`

    (|-) :: (Elements -> React Element) -> React Element -> React Element

#### `child`

    child :: (Elements -> React Element) -> React Element -> React Element

#### `children`

    children :: (Elements -> React Element) -> [React Element] -> React Element


## Module React.ComponentF

### Types

#### `Component`

    type Component props state = FreeC (ComponentF props state)

#### `ComponentF`

    data ComponentF props state a
      = GetProps (Reference props state) (Props props -> a)
      | GetState (Reference props state) (State state -> a)
      | SetStateSync (Reference props state) (State state) a
      | SetStateAsync (Reference props state) (State state) a

#### `Props`

    newtype Props props
      = Props props

#### `Reference`

    data Reference props state

#### `State`

    newtype State state
      = State state


### Values

#### `getState`

    getState :: forall props state. Reference props state -> Component props state (State state)

#### `setStateAsync`

    setStateAsync :: forall props state. Reference props state -> State state -> Component props state Unit

#### `setStateSync`

    setStateSync :: forall props state. Reference props state -> State state -> Component props state Unit


## Module React.ComponentI

### Values

#### `run`

    run :: forall props state a. Component props state a -> Eff (react :: ReactE) a


## Module React.Dom

### Values

#### `_data`

    _data :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `_data'`

    _data' :: Elements -> React Element

#### `a`

    a :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `a'`

    a' :: Elements -> React Element

#### `abbr`

    abbr :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `abbr'`

    abbr' :: Elements -> React Element

#### `address`

    address :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `address'`

    address' :: Elements -> React Element

#### `area`

    area :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `area'`

    area' :: Elements -> React Element

#### `article`

    article :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `article'`

    article' :: Elements -> React Element

#### `aside`

    aside :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `aside'`

    aside' :: Elements -> React Element

#### `audio`

    audio :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `audio'`

    audio' :: Elements -> React Element

#### `b`

    b :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `b'`

    b' :: Elements -> React Element

#### `base`

    base :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `base'`

    base' :: Elements -> React Element

#### `bdi`

    bdi :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `bdi'`

    bdi' :: Elements -> React Element

#### `bdo`

    bdo :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `bdo'`

    bdo' :: Elements -> React Element

#### `big`

    big :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `big'`

    big' :: Elements -> React Element

#### `blockquote`

    blockquote :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `blockquote'`

    blockquote' :: Elements -> React Element

#### `body`

    body :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `body'`

    body' :: Elements -> React Element

#### `br`

    br :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `br'`

    br' :: Elements -> React Element

#### `button`

    button :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `button'`

    button' :: Elements -> React Element

#### `canvas`

    canvas :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `canvas'`

    canvas' :: Elements -> React Element

#### `caption`

    caption :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `caption'`

    caption' :: Elements -> React Element

#### `circle`

    circle :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `circle'`

    circle' :: Elements -> React Element

#### `cite`

    cite :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `cite'`

    cite' :: Elements -> React Element

#### `code`

    code :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `code'`

    code' :: Elements -> React Element

#### `col`

    col :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `col'`

    col' :: Elements -> React Element

#### `colgroup`

    colgroup :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `colgroup'`

    colgroup' :: Elements -> React Element

#### `datalist`

    datalist :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `datalist'`

    datalist' :: Elements -> React Element

#### `dd`

    dd :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `dd'`

    dd' :: Elements -> React Element

#### `defs`

    defs :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `defs'`

    defs' :: Elements -> React Element

#### `del`

    del :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `del'`

    del' :: Elements -> React Element

#### `details`

    details :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `details'`

    details' :: Elements -> React Element

#### `dfn`

    dfn :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `dfn'`

    dfn' :: Elements -> React Element

#### `dialog`

    dialog :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `dialog'`

    dialog' :: Elements -> React Element

#### `div`

    div :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `div'`

    div' :: Elements -> React Element

#### `dl`

    dl :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `dl'`

    dl' :: Elements -> React Element

#### `dt`

    dt :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `dt'`

    dt' :: Elements -> React Element

#### `ellipse`

    ellipse :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `ellipse'`

    ellipse' :: Elements -> React Element

#### `em`

    em :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `em'`

    em' :: Elements -> React Element

#### `embed`

    embed :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `embed'`

    embed' :: Elements -> React Element

#### `fieldset`

    fieldset :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `fieldset'`

    fieldset' :: Elements -> React Element

#### `figcaption`

    figcaption :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `figcaption'`

    figcaption' :: Elements -> React Element

#### `figure`

    figure :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `figure'`

    figure' :: Elements -> React Element

#### `footer`

    footer :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `footer'`

    footer' :: Elements -> React Element

#### `form`

    form :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `form'`

    form' :: Elements -> React Element

#### `g`

    g :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `g'`

    g' :: Elements -> React Element

#### `h1`

    h1 :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `h1'`

    h1' :: Elements -> React Element

#### `h2`

    h2 :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `h2'`

    h2' :: Elements -> React Element

#### `h3`

    h3 :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `h3'`

    h3' :: Elements -> React Element

#### `h4`

    h4 :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `h4'`

    h4' :: Elements -> React Element

#### `h5`

    h5 :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `h5'`

    h5' :: Elements -> React Element

#### `h6`

    h6 :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `h6'`

    h6' :: Elements -> React Element

#### `head`

    head :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `head'`

    head' :: Elements -> React Element

#### `header`

    header :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `header'`

    header' :: Elements -> React Element

#### `hr`

    hr :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `hr'`

    hr' :: Elements -> React Element

#### `html`

    html :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `html'`

    html' :: Elements -> React Element

#### `i`

    i :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `i'`

    i' :: Elements -> React Element

#### `iframe`

    iframe :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `iframe'`

    iframe' :: Elements -> React Element

#### `img`

    img :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `img'`

    img' :: Elements -> React Element

#### `input`

    input :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `input'`

    input' :: Elements -> React Element

#### `ins`

    ins :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `ins'`

    ins' :: Elements -> React Element

#### `kbd`

    kbd :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `kbd'`

    kbd' :: Elements -> React Element

#### `keygen`

    keygen :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `keygen'`

    keygen' :: Elements -> React Element

#### `label`

    label :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `label'`

    label' :: Elements -> React Element

#### `legend`

    legend :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `legend'`

    legend' :: Elements -> React Element

#### `li`

    li :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `li'`

    li' :: Elements -> React Element

#### `line`

    line :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `line'`

    line' :: Elements -> React Element

#### `linearGradient`

    linearGradient :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `linearGradient'`

    linearGradient' :: Elements -> React Element

#### `link`

    link :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `link'`

    link' :: Elements -> React Element

#### `main`

    main :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `main'`

    main' :: Elements -> React Element

#### `map`

    map :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `map'`

    map' :: Elements -> React Element

#### `mark`

    mark :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `mark'`

    mark' :: Elements -> React Element

#### `mask`

    mask :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `mask'`

    mask' :: Elements -> React Element

#### `menu`

    menu :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `menu'`

    menu' :: Elements -> React Element

#### `menuitem`

    menuitem :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `menuitem'`

    menuitem' :: Elements -> React Element

#### `meta`

    meta :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `meta'`

    meta' :: Elements -> React Element

#### `meter`

    meter :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `meter'`

    meter' :: Elements -> React Element

#### `nav`

    nav :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `nav'`

    nav' :: Elements -> React Element

#### `noscript`

    noscript :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `noscript'`

    noscript' :: Elements -> React Element

#### `null`

    null :: React Element

#### `object`

    object :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `object'`

    object' :: Elements -> React Element

#### `ol`

    ol :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `ol'`

    ol' :: Elements -> React Element

#### `optgroup`

    optgroup :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `optgroup'`

    optgroup' :: Elements -> React Element

#### `option`

    option :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `option'`

    option' :: Elements -> React Element

#### `output`

    output :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `output'`

    output' :: Elements -> React Element

#### `p`

    p :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `p'`

    p' :: Elements -> React Element

#### `param`

    param :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `param'`

    param' :: Elements -> React Element

#### `path`

    path :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `path'`

    path' :: Elements -> React Element

#### `pattern`

    pattern :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `pattern'`

    pattern' :: Elements -> React Element

#### `picture`

    picture :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `picture'`

    picture' :: Elements -> React Element

#### `polygon`

    polygon :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `polygon'`

    polygon' :: Elements -> React Element

#### `polyline`

    polyline :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `polyline'`

    polyline' :: Elements -> React Element

#### `pre`

    pre :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `pre'`

    pre' :: Elements -> React Element

#### `progress`

    progress :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `progress'`

    progress' :: Elements -> React Element

#### `q`

    q :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `q'`

    q' :: Elements -> React Element

#### `radialGradient`

    radialGradient :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `radialGradient'`

    radialGradient' :: Elements -> React Element

#### `rect`

    rect :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `rect'`

    rect' :: Elements -> React Element

#### `rp`

    rp :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `rp'`

    rp' :: Elements -> React Element

#### `rt`

    rt :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `rt'`

    rt' :: Elements -> React Element

#### `ruby`

    ruby :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `ruby'`

    ruby' :: Elements -> React Element

#### `s`

    s :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `s'`

    s' :: Elements -> React Element

#### `samp`

    samp :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `samp'`

    samp' :: Elements -> React Element

#### `script`

    script :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `script'`

    script' :: Elements -> React Element

#### `section`

    section :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `section'`

    section' :: Elements -> React Element

#### `select`

    select :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `select'`

    select' :: Elements -> React Element

#### `small`

    small :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `small'`

    small' :: Elements -> React Element

#### `source`

    source :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `source'`

    source' :: Elements -> React Element

#### `span`

    span :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `span'`

    span' :: Elements -> React Element

#### `stop`

    stop :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `stop'`

    stop' :: Elements -> React Element

#### `strong`

    strong :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `strong'`

    strong' :: Elements -> React Element

#### `style`

    style :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `style'`

    style' :: Elements -> React Element

#### `sub`

    sub :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `sub'`

    sub' :: Elements -> React Element

#### `summary`

    summary :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `summary'`

    summary' :: Elements -> React Element

#### `sup`

    sup :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `sup'`

    sup' :: Elements -> React Element

#### `svg`

    svg :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `svg'`

    svg' :: Elements -> React Element

#### `table`

    table :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `table'`

    table' :: Elements -> React Element

#### `tbody`

    tbody :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `tbody'`

    tbody' :: Elements -> React Element

#### `td`

    td :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `td'`

    td' :: Elements -> React Element

#### `text`

    text :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `text'`

    text' :: Elements -> React Element

#### `textarea`

    textarea :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `textarea'`

    textarea' :: Elements -> React Element

#### `textnode`

    textnode :: String -> React Element

#### `tfoot`

    tfoot :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `tfoot'`

    tfoot' :: Elements -> React Element

#### `th`

    th :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `th'`

    th' :: Elements -> React Element

#### `thead`

    thead :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `thead'`

    thead' :: Elements -> React Element

#### `time`

    time :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `time'`

    time' :: Elements -> React Element

#### `title`

    title :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `title'`

    title' :: Elements -> React Element

#### `tr`

    tr :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `tr'`

    tr' :: Elements -> React Element

#### `track`

    track :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `track'`

    track' :: Elements -> React Element

#### `tspan`

    tspan :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `tspan'`

    tspan' :: Elements -> React Element

#### `u`

    u :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `u'`

    u' :: Elements -> React Element

#### `ul`

    ul :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `ul'`

    ul' :: Elements -> React Element

#### `var`

    var :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `var'`

    var' :: Elements -> React Element

#### `video`

    video :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `video'`

    video' :: Elements -> React Element

#### `wbr`

    wbr :: forall eff props state. Attributes -> Events eff props state -> Elements -> React Element

#### `wbr'`

    wbr' :: Elements -> React Element


## Module React.Events

### Types

#### `EventName`

    data EventName :: # ! -> * -> * -> *

#### `Events`

    newtype Events eff props state
      = Events (Options (EventName eff props state))

#### `SyntheticClipboardEvent`

    newtype SyntheticClipboardEvent
      = SyntheticClipboardEvent { clipboardData :: DOMDataTransfer, "type" :: String, timeStamp :: Number, target :: DOMEventTarget, stopPropagation :: forall eff. Eff (dom :: DOM | eff) Unit, preventDefault :: forall eff. Eff (dom :: DOM | eff) Unit, nativeEvent :: DOMEvent, isTrusted :: Boolean, eventPhase :: Number, defaultPrevented :: Boolean, currentTarget :: DOMEventTarget, cancelable :: Boolean, bubbles :: Boolean }

#### `SyntheticClipboardEventFn`

    newtype SyntheticClipboardEventFn eff props state
      = SyntheticClipboardEventFn (SyntheticClipboardEvent -> Eff eff (Component props state Unit))

#### `SyntheticCompositionEvent`

    data SyntheticCompositionEvent

#### `SyntheticCompositionEventFn`

    newtype SyntheticCompositionEventFn eff props state
      = SyntheticCompositionEventFn (SyntheticCompositionEvent -> Eff eff (Component props state Unit))

#### `SyntheticDragEvent`

    data SyntheticDragEvent

#### `SyntheticDragEventFn`

    newtype SyntheticDragEventFn eff props state
      = SyntheticDragEventFn (SyntheticDragEvent -> Eff eff (Component props state Unit))

#### `SyntheticFocusEvent`

    newtype SyntheticFocusEvent
      = SyntheticFocusEvent { relatedTarget :: DOMEventTarget, "type" :: String, timeStamp :: Number, target :: DOMEventTarget, stopPropagation :: forall eff. Eff (dom :: DOM | eff) Unit, preventDefault :: forall eff. Eff (dom :: DOM | eff) Unit, nativeEvent :: DOMEvent, isTrusted :: Boolean, eventPhase :: Number, defaultPrevented :: Boolean, currentTarget :: DOMEventTarget, cancelable :: Boolean, bubbles :: Boolean }

#### `SyntheticFocusEventFn`

    newtype SyntheticFocusEventFn eff props state
      = SyntheticFocusEventFn (SyntheticFocusEvent -> Eff eff (Component props state Unit))

#### `SyntheticInputEvent`

    newtype SyntheticInputEvent
      = SyntheticInputEvent { "type" :: String, timeStamp :: Number, target :: DOMEventTarget, stopPropagation :: forall eff. Eff (dom :: DOM | eff) Unit, preventDefault :: forall eff. Eff (dom :: DOM | eff) Unit, nativeEvent :: DOMEvent, isTrusted :: Boolean, eventPhase :: Number, defaultPrevented :: Boolean, currentTarget :: DOMEventTarget, cancelable :: Boolean, bubbles :: Boolean }

#### `SyntheticInputEventFn`

    newtype SyntheticInputEventFn eff props state
      = SyntheticInputEventFn (SyntheticInputEvent -> Eff eff (Component props state Unit))

#### `SyntheticKeyboardEvent`

    newtype SyntheticKeyboardEvent
      = SyntheticKeyboardEvent { which :: Number, shiftKey :: Boolean, repeat :: Boolean, metaKey :: Boolean, location :: Number, locale :: String, keyCode :: Number, key :: String, getModifierState :: String -> Boolean, ctrlKey :: Boolean, charCode :: Number, altKey :: Boolean, "type" :: String, timeStamp :: Number, target :: DOMEventTarget, stopPropagation :: forall eff. Eff (dom :: DOM | eff) Unit, preventDefault :: forall eff. Eff (dom :: DOM | eff) Unit, nativeEvent :: DOMEvent, isTrusted :: Boolean, eventPhase :: Number, defaultPrevented :: Boolean, currentTarget :: DOMEventTarget, cancelable :: Boolean, bubbles :: Boolean }

#### `SyntheticKeyboardEventFn`

    newtype SyntheticKeyboardEventFn eff props state
      = SyntheticKeyboardEventFn (SyntheticKeyboardEvent -> Eff eff (Component props state Unit))

#### `SyntheticMouseEvent`

    newtype SyntheticMouseEvent
      = SyntheticMouseEvent { shiftKey :: Boolean, screenY :: Number, screenX :: Number, relatedTarget :: DOMEventTarget, pageY :: Number, pageX :: Number, metaKey :: Boolean, getModifierState :: String -> Boolean, ctrlKey :: Boolean, clientY :: Number, clientX :: Number, buttons :: Number, button :: Number, altKey :: Boolean, "type" :: String, timeStamp :: Number, target :: DOMEventTarget, stopPropagation :: forall eff. Eff (dom :: DOM | eff) Unit, preventDefault :: forall eff. Eff (dom :: DOM | eff) Unit, nativeEvent :: DOMEvent, isTrusted :: Boolean, eventPhase :: Number, defaultPrevented :: Boolean, currentTarget :: DOMEventTarget, cancelable :: Boolean, bubbles :: Boolean }

#### `SyntheticMouseEventFn`

    newtype SyntheticMouseEventFn eff props state
      = SyntheticMouseEventFn (SyntheticMouseEvent -> Eff eff (Component props state Unit))

#### `SyntheticTouchEvent`

    newtype SyntheticTouchEvent
      = SyntheticTouchEvent { touches :: DOMTouchList, targetTouches :: DOMTouchList, shiftKey :: Boolean, metaKey :: Boolean, getModifierState :: String -> Boolean, ctrlKey :: Boolean, changedTouches :: DOMTouchList, altKey :: Boolean, "type" :: String, timeStamp :: Number, target :: DOMEventTarget, stopPropagation :: forall eff. Eff (dom :: DOM | eff) Unit, preventDefault :: forall eff. Eff (dom :: DOM | eff) Unit, nativeEvent :: DOMEvent, isTrusted :: Boolean, eventPhase :: Number, defaultPrevented :: Boolean, currentTarget :: DOMEventTarget, cancelable :: Boolean, bubbles :: Boolean }

#### `SyntheticTouchEventFn`

    newtype SyntheticTouchEventFn eff props state
      = SyntheticTouchEventFn (SyntheticTouchEvent -> Eff eff (Component props state Unit))

#### `SyntheticUIEvent`

    newtype SyntheticUIEvent
      = SyntheticUIEvent { view :: DOMAbstractView, detail :: Number, "type" :: String, timeStamp :: Number, target :: DOMEventTarget, stopPropagation :: forall eff. Eff (dom :: DOM | eff) Unit, preventDefault :: forall eff. Eff (dom :: DOM | eff) Unit, nativeEvent :: DOMEvent, isTrusted :: Boolean, eventPhase :: Number, defaultPrevented :: Boolean, currentTarget :: DOMEventTarget, cancelable :: Boolean, bubbles :: Boolean }

#### `SyntheticUIEventFn`

    newtype SyntheticUIEventFn eff props state
      = SyntheticUIEventFn (SyntheticUIEvent -> Eff eff (Component props state Unit))

#### `SyntheticWheelEvent`

    newtype SyntheticWheelEvent
      = SyntheticWheelEvent { deltaZ :: Number, deltaY :: Number, deltaX :: Number, deltaMode :: Number, detail :: Number, "type" :: String, timeStamp :: Number, target :: DOMEventTarget, stopPropagation :: forall eff. Eff (dom :: DOM | eff) Unit, preventDefault :: forall eff. Eff (dom :: DOM | eff) Unit, nativeEvent :: DOMEvent, isTrusted :: Boolean, eventPhase :: Number, defaultPrevented :: Boolean, currentTarget :: DOMEventTarget, cancelable :: Boolean, bubbles :: Boolean }

#### `SyntheticWheelEventFn`

    newtype SyntheticWheelEventFn eff props state
      = SyntheticWheelEventFn (SyntheticWheelEvent -> Eff eff (Component props state Unit))


### Type Class Instances

#### `isOptionSyntheticClipboardEventFn`

    instance isOptionSyntheticClipboardEventFn :: IsOption (SyntheticClipboardEventFn eff props state)

#### `isOptionSyntheticCompositionEventFn`

    instance isOptionSyntheticCompositionEventFn :: IsOption (SyntheticCompositionEventFn eff props state)

#### `isOptionSyntheticDragEventFn`

    instance isOptionSyntheticDragEventFn :: IsOption (SyntheticDragEventFn eff props state)

#### `isOptionSyntheticFocusEventFn`

    instance isOptionSyntheticFocusEventFn :: IsOption (SyntheticFocusEventFn eff props state)

#### `isOptionSyntheticInputEventFn`

    instance isOptionSyntheticInputEventFn :: IsOption (SyntheticInputEventFn eff props state)

#### `isOptionSyntheticKeyboardEventFn`

    instance isOptionSyntheticKeyboardEventFn :: IsOption (SyntheticKeyboardEventFn eff props state)

#### `isOptionSyntheticMouseEventFn`

    instance isOptionSyntheticMouseEventFn :: IsOption (SyntheticMouseEventFn eff props state)

#### `isOptionSyntheticTouchEventFn`

    instance isOptionSyntheticTouchEventFn :: IsOption (SyntheticTouchEventFn eff props state)

#### `isOptionSyntheticUIEventFn`

    instance isOptionSyntheticUIEventFn :: IsOption (SyntheticUIEventFn eff props state)

#### `isOptionSyntheticWheelEventFn`

    instance isOptionSyntheticWheelEventFn :: IsOption (SyntheticWheelEventFn eff props state)

#### `monoidEvents`

    instance monoidEvents :: Monoid (Events eff props state)

#### `semigroupEvents`

    instance semigroupEvents :: Semigroup (Events eff props state)


### Values

#### `onBlur`

    onBlur :: forall eff props state. Option (EventName eff props state) (SyntheticFocusEventFn eff props state)

#### `onBlurCapture`

    onBlurCapture :: forall eff props state. Option (EventName eff props state) (SyntheticFocusEventFn eff props state)

#### `onChange`

    onChange :: forall eff props state. Option (EventName eff props state) (SyntheticInputEventFn eff props state)

#### `onChangeCapture`

    onChangeCapture :: forall eff props state. Option (EventName eff props state) (SyntheticInputEventFn eff props state)

#### `onClick`

    onClick :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onClickCapture`

    onClickCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onCopy`

    onCopy :: forall eff props state. Option (EventName eff props state) (SyntheticClipboardEventFn eff props state)

#### `onCopyCapture`

    onCopyCapture :: forall eff props state. Option (EventName eff props state) (SyntheticClipboardEventFn eff props state)

#### `onCut`

    onCut :: forall eff props state. Option (EventName eff props state) (SyntheticClipboardEventFn eff props state)

#### `onCutCapture`

    onCutCapture :: forall eff props state. Option (EventName eff props state) (SyntheticClipboardEventFn eff props state)

#### `onDoubleClick`

    onDoubleClick :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onDoubleClickCapture`

    onDoubleClickCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onDrag`

    onDrag :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onDragCapture`

    onDragCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onDragEnd`

    onDragEnd :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onDragEndCapture`

    onDragEndCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onDragEnter`

    onDragEnter :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onDragEnterCapture`

    onDragEnterCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onDragExit`

    onDragExit :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onDragExitCapture`

    onDragExitCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onDragLeave`

    onDragLeave :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onDragLeaveCapture`

    onDragLeaveCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onDragOver`

    onDragOver :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onDragOverCapture`

    onDragOverCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onDragStart`

    onDragStart :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onDragStartCapture`

    onDragStartCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onDrop`

    onDrop :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onDropCapture`

    onDropCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onFocus`

    onFocus :: forall eff props state. Option (EventName eff props state) (SyntheticFocusEventFn eff props state)

#### `onFocusCapture`

    onFocusCapture :: forall eff props state. Option (EventName eff props state) (SyntheticFocusEventFn eff props state)

#### `onInput`

    onInput :: forall eff props state. Option (EventName eff props state) (SyntheticInputEventFn eff props state)

#### `onInputCapture`

    onInputCapture :: forall eff props state. Option (EventName eff props state) (SyntheticInputEventFn eff props state)

#### `onKeyDown`

    onKeyDown :: forall eff props state. Option (EventName eff props state) (SyntheticKeyboardEventFn eff props state)

#### `onKeyDownCapture`

    onKeyDownCapture :: forall eff props state. Option (EventName eff props state) (SyntheticKeyboardEventFn eff props state)

#### `onKeyPress`

    onKeyPress :: forall eff props state. Option (EventName eff props state) (SyntheticKeyboardEventFn eff props state)

#### `onKeyPressCapture`

    onKeyPressCapture :: forall eff props state. Option (EventName eff props state) (SyntheticKeyboardEventFn eff props state)

#### `onKeyUp`

    onKeyUp :: forall eff props state. Option (EventName eff props state) (SyntheticKeyboardEventFn eff props state)

#### `onKeyUpCapture`

    onKeyUpCapture :: forall eff props state. Option (EventName eff props state) (SyntheticKeyboardEventFn eff props state)

#### `onMouseDown`

    onMouseDown :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onMouseDownCapture`

    onMouseDownCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onMouseEnter`

    onMouseEnter :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onMouseEnterCapture`

    onMouseEnterCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onMouseLeave`

    onMouseLeave :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onMouseLeaveCapture`

    onMouseLeaveCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onMouseMove`

    onMouseMove :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onMouseMoveCapture`

    onMouseMoveCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onMouseOut`

    onMouseOut :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onMouseOutCapture`

    onMouseOutCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onMouseOver`

    onMouseOver :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onMouseOverCapture`

    onMouseOverCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onMouseUp`

    onMouseUp :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onMouseUpCapture`

    onMouseUpCapture :: forall eff props state. Option (EventName eff props state) (SyntheticMouseEventFn eff props state)

#### `onPaste`

    onPaste :: forall eff props state. Option (EventName eff props state) (SyntheticClipboardEventFn eff props state)

#### `onPasteCapture`

    onPasteCapture :: forall eff props state. Option (EventName eff props state) (SyntheticClipboardEventFn eff props state)

#### `onScroll`

    onScroll :: forall eff props state. Option (EventName eff props state) (SyntheticUIEventFn eff props state)

#### `onScrollCapture`

    onScrollCapture :: forall eff props state. Option (EventName eff props state) (SyntheticUIEventFn eff props state)

#### `onSubmit`

    onSubmit :: forall eff props state. Option (EventName eff props state) (SyntheticInputEventFn eff props state)

#### `onSubmitCapture`

    onSubmitCapture :: forall eff props state. Option (EventName eff props state) (SyntheticInputEventFn eff props state)

#### `onTouchCancel`

    onTouchCancel :: forall eff props state. Option (EventName eff props state) (SyntheticTouchEventFn eff props state)

#### `onTouchCancelCapture`

    onTouchCancelCapture :: forall eff props state. Option (EventName eff props state) (SyntheticTouchEventFn eff props state)

#### `onTouchEnd`

    onTouchEnd :: forall eff props state. Option (EventName eff props state) (SyntheticTouchEventFn eff props state)

#### `onTouchEndCapture`

    onTouchEndCapture :: forall eff props state. Option (EventName eff props state) (SyntheticTouchEventFn eff props state)

#### `onTouchMove`

    onTouchMove :: forall eff props state. Option (EventName eff props state) (SyntheticTouchEventFn eff props state)

#### `onTouchMoveCapture`

    onTouchMoveCapture :: forall eff props state. Option (EventName eff props state) (SyntheticTouchEventFn eff props state)

#### `onTouchStart`

    onTouchStart :: forall eff props state. Option (EventName eff props state) (SyntheticTouchEventFn eff props state)

#### `onTouchStartCapture`

    onTouchStartCapture :: forall eff props state. Option (EventName eff props state) (SyntheticTouchEventFn eff props state)

#### `onWheel`

    onWheel :: forall eff props state. Option (EventName eff props state) (SyntheticWheelEventFn eff props state)

#### `onWheelCapture`

    onWheelCapture :: forall eff props state. Option (EventName eff props state) (SyntheticWheelEventFn eff props state)


## Module React.ReactF

### Types

#### `Class`

    data Class props state

#### `DisplayName`

    type DisplayName = String

#### `Element`

    data Element

#### `Elements`

    type Elements = [Element]

#### `LifecycleFn0`

    type LifecycleFn0 eff props state a = Reference props state -> Eff eff (Component props state a)

#### `LifecycleFn1`

    type LifecycleFn1 eff props state a = Reference props state -> Props props -> Eff eff (Component props state a)

#### `LifecycleFn2`

    type LifecycleFn2 eff props state a = Reference props state -> Props props -> State state -> Eff eff (Component props state a)

#### `React`

    type React = FreeC ReactF

#### `ReactF`

    data ReactF a
      = CreateClass (forall eff props state. Specification eff props state) (forall props state. Class props state -> a)
      | CreateElementFromClass (forall props state. Class props state) (forall props. Props props) (forall eff props state. Events eff props state) Elements (Element -> a)
      | CreateElementFromTagName TagName Attributes (forall eff props state. Events eff props state) Elements (Element -> a)
      | RenderSync Element DOMElement (forall props state. Reference props state -> a)
      | RenderAsync Element DOMElement (forall props state. Reference props state -> a)

#### `RenderFn`

    type RenderFn props state = Reference props state -> Props props -> State state -> React Element

#### `Spec`

    type Spec eff props state = { componentWillUnmount :: LifecycleFn0 eff props state Unit, componentDidUpdate :: LifecycleFn2 eff props state Unit, componentWillUpdate :: LifecycleFn2 eff props state Unit, shouldComponentUpdate :: LifecycleFn2 eff props state Boolean, componentWillReceiveProps :: LifecycleFn1 eff props state Unit, componentDidMount :: LifecycleFn0 eff props state Unit, componentWillMount :: LifecycleFn0 eff props state Unit, displayName :: DisplayName, getDefaultProps :: Props props, getInitialState :: State state, render :: RenderFn props state }

#### `Specification`

    newtype Specification eff props state
      = Specification (Spec eff props state)


### Values

#### `createClass`

    createClass :: forall eff props state. Specification eff props state -> React (Class props state)

#### `createElementFromClass`

    createElementFromClass :: forall eff props state. Class props state -> Props props -> Events eff props state -> Elements -> React Element

#### `createElementFromTagName`

    createElementFromTagName :: forall eff props state. TagName -> Attributes -> Events eff props state -> Elements -> React Element

#### `renderAsync`

    renderAsync :: forall props spec. Element -> DOMElement -> React (Reference props spec)

#### `renderSync`

    renderSync :: forall props spec. Element -> DOMElement -> React (Reference props spec)


## Module React.ReactI

### Types

#### `ReactJs`

    data ReactJs


### Values

#### `run`

    run :: forall a. ReactJs -> React a -> Eff (react :: ReactE) a


## Module React.Spec

### Values

#### `spec`

    spec :: forall eff props state. Props props -> State state -> RenderFn props state -> Specification eff props state


## Module React.TagName

### Types

#### `TagName`

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


### Type Class Instances

#### `showTagName`

    instance showTagName :: Show TagName


## Module React.Types

### Types

#### `DOMAbstractView`

    data DOMAbstractView

#### `DOMDataTransfer`

    data DOMDataTransfer

#### `DOMElement`

    data DOMElement

#### `DOMEvent`

    data DOMEvent

#### `DOMEventTarget`

    data DOMEventTarget

#### `DOMTouchList`

    data DOMTouchList

#### `ReactE`

    data ReactE :: !



