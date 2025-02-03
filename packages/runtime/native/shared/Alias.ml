(* Alias is used to have a few utilities for users that are not aware of the underlying type *)

open Css_types

let initial = Cascading.initial
let inherit_ = Cascading.inherit_
let unset = Cascading.unset

let var ?default (x : string) : [> Var.t ] =
  match default with None -> `var x | Some default -> `varDefault (x, default)

let auto = Auto.auto
let none = None.none
let text = `text
let pct = Percentage.pct
let num = Length.num
let ch = Length.ch
let cm = Length.cm
let em = Length.em
let ex = Length.ex
let mm = Length.mm
let pt = Length.pt
let px = Length.px
let pxFloat = Length.pxFloat
let rem = Length.rem
let vh = Length.vh
let vw = Length.vw
let vmin = Length.vmin
let vmax = Length.vmax
let zero = Length.zero
let fr = TrackBreadth.fr
let deg = Angle.deg
let rad = Angle.rad
let grad = Angle.grad
let turn = Angle.turn
let ltr = Direction.ltr
let rtl = Direction.rtl
let absolute = PropertyPosition.absolute
let relative = PropertyPosition.relative
let static = PropertyPosition.static
let fixed = PropertyPosition.fixed
let sticky = PropertyPosition.sticky
let isolate = Isolation.isolate
let horizontal = Resize.horizontal
let vertical = Resize.vertical
let smallCaps = FontVariant.smallCaps
let italic = FontStyle.italic
let oblique = FontStyle.oblique
let hidden = `hidden
let visible = `visible
let scroll = `scroll
let rgb = Color.rgb
let rgba = Color.rgba
let hsl = Color.hsl
let hsla = Color.hsla
let hex = Color.hex
let currentColor = Color.currentColor
let transparent = Color.transparent
let linear = EasingFunction.linear
let ease = EasingFunction.ease
let easeIn = EasingFunction.easeIn
let easeInOut = EasingFunction.easeInOut
let easeOut = EasingFunction.easeOut
let stepStart = EasingFunction.stepStart
let stepEnd = EasingFunction.stepEnd
let steps = EasingFunction.steps
let cubicBezier = EasingFunction.cubicBezier
let marginBox = GeometryBox.marginBox
let fillBox = GeometryBox.fillBox
let strokeBox = GeometryBox.strokeBox
let viewBox = GeometryBox.viewBox
let translate = Transform.translate
let translate3d = Transform.translate3d
let translateX = Transform.translateX
let translateY = Transform.translateY
let translateZ = Transform.translateZ
let scaleX = Transform.scaleX
let scaleY = Transform.scaleY
let scaleZ = Transform.scaleZ
let rotateX = Transform.rotateX
let rotateY = Transform.rotateY
let rotateZ = Transform.rotateZ
let scale = Transform.scale
let scale3d = Transform.scale3d
let skew = Transform.skew
let skewX = Transform.skewX
let skewY = Transform.skewY
let thin = FontWeight.thin
let extraLight = FontWeight.extraLight
let light = FontWeight.light
let medium = FontWeight.medium
let semiBold = FontWeight.semiBold
let bold = FontWeight.bold
let extraBold = FontWeight.extraBold
let lighter = FontWeight.lighter
let bolder = FontWeight.bolder
let linearGradient = Gradient.linearGradient
let repeatingLinearGradient = Gradient.repeatingLinearGradient
let radialGradient = Gradient.radialGradient
let repeatingRadialGradient = Gradient.repeatingRadialGradient
let conicGradient = Gradient.conicGradient
let area = ExplicitTrackWithArea.area
let areas = GridTemplateAreas.areas
let trackSizes = GridAutoColumns.trackSizes
let tracks = GridTemplateRows.Value.tracks
let numInt = GridLine.num
let ident = GridLine.ident
let numIdent = GridLine.numIdent
let span = GridLine.span
let contextMenu = Cursor.contextMenu
let help = Cursor.help
let pointer = Cursor.pointer
let progress = Cursor.progress
let wait = Cursor.wait
let cell = Cursor.cell
let crosshair = Cursor.crosshair
let verticalText = Cursor.verticalText
let alias = Cursor.alias
let copy = Cursor.copy
let move = Cursor.move
let noDrop = Cursor.noDrop
let notAllowed = Cursor.notAllowed
let grab = Cursor.grab
let grabbing = Cursor.grabbing
let allScroll = Cursor.allScroll
let colResize = Cursor.colResize
let rowResize = Cursor.rowResize
let nResize = Cursor.nResize
let eResize = Cursor.eResize
let sResize = Cursor.sResize
let wResize = Cursor.wResize
let neResize = Cursor.neResize
let nwResize = Cursor.nwResize
let seResize = Cursor.seResize
let swResize = Cursor.swResize
let ewResize = Cursor.ewResize
let nsResize = Cursor.nsResize
let neswResize = Cursor.neswResize
let nwseResize = Cursor.nwseResize
let zoomIn = Cursor.zoomIn
let zoomOut = Cursor.zoomOut

module Calc = struct
  let ( - ) a b = `calc (`sub (a, b))
  let ( + ) a b = `calc (`add (a, b))
  let ( * ) a b = `calc (`mult (a, b))
end

let size = BackgroundSize.size
let all = `all
let backwards = `backwards
let baseline = `baseline
let block = `block
let borderBox = `borderBox
let both = `both
let center = `center
let column = `column
let columnReverse = `columnReverse
let contain = `contain
let contentBox = `contentBox
let count x = `count x
let cover = `cover
let dashed = `dashed
let dotted = `dotted
let flexBox = `flex
let grid = `grid
let inlineGrid = `inlineGrid
let flexEnd = `flexEnd
let flexStart = `flexStart
let forwards = `forwards
let infinite = `infinite
let inline = `inline
let contents = `contents
let inlineBlock = `inlineBlock
let inlineFlex = `inlineFlex
let inlineTable = `inlineTable
let listItem = `listItem
let runIn = `runIn
let table = `table
let tableCaption = `tableCaption
let tableColumnGroup = `tableColumnGroup
let tableHeaderGroup = `tableHeaderGroup
let tableFooterGroup = `tableFooterGroup
let tableRowGroup = `tableRowGroup
let tableCell = `tableCell
let tableColumn = `tableColumn
let tableRow = `tableRow
let local = `local
let localUrl x = `localUrl x
let noRepeat = `noRepeat
let space = `space
let nowrap = `nowrap
let paddingBox = `paddingBox
let paused = `paused
let repeatFn = Repeat.repeat
let repeat = `repeat
let minmax = MinMax.minmax
let repeatX = `repeatX
let repeatY = `repeatY
let rotate = Transform.rotate
let rotate3d = Transform.rotate3d
let row = `row
let rowReverse = `rowReverse
let running = `running
let solid = `solid
let spaceAround = `spaceAround
let spaceBetween = `spaceBetween
let spaceEvenly = `spaceEvenly
let stretch = `stretch
let url = Url.url
let wrap = `wrap
let wrapReverse = `wrapReverse
let inside = `inside
let outside = `outside
let underline = `underline
let overline = `overline
let lineThrough = `lineThrough
let clip = `clip
let ellipsis = `ellipsis
let wavy = `wavy
let double = `double
let uppercase = `uppercase
let lowercase = `lowercase
let capitalize = `capitalize
let sub = `sub
let super = `super
let textTop = `textTop
let textBottom = `textBottom
let middle = `middle
let normal = `normal
let breakAll = `breakAll
let keepAll = `keepAll
let breakWord = `breakWord
let reverse = `reverse
let alternate = `alternate
let alternateReverse = `alternateReverse
let fill = `fill
let maxContent = `maxContent
let minContent = `minContent
let fitContent = `fitContent
let fitContentFn = TrackSize.fitContent
let round = `round
let miter = `miter
let bevel = `bevel
let butt = `butt
let square = `square
let panX = `panX
let panY = `panY
let panLeft = `panLeft
let panRight = `panRight
let panUp = `panUp
let panDown = `panDown
let pinchZoom = `pinchZoom
let manipulation = `manipulation
let subgrid = Track.subgrid
let lineNames = Track.lineNames

module Shadow = struct
  type box = Css_types.Shadow.box Css_types.Shadow.t
  type text = Css_types.Shadow.text Css_types.Shadow.t

  let box = Css_types.Shadow.box
  let text = Css_types.Shadow.text
end

module Animation = struct
  (* backwards compatibility *)
  let shorthand = Css_types.Animation.Value.make
end

module Transition = struct
  (* backwards compatibility *)
  let shorthand = Css_types.Transition.Value.make
end

type animationName = AnimationName.t
type angle = Angle.t
type animationDirection = AnimationDirection.Value.t
type animationFillMode = AnimationFillMode.Value.t
type animationIterationCount = AnimationIterationCount.Value.t
type animationPlayState = AnimationPlayState.Value.t
type cascading = Cascading.t
type color = Color.t
type fontStyle = FontStyle.t
type fontWeight = FontWeight.t
type length = Length.t
type listStyleType = ListStyleType.t
type repeatValue = RepeatValue.t
type outlineStyle = OutlineStyle.t
type transform = Transform.t
type gradient = Gradient.t
