#import "@preview/cetz:0.3.2"


#cetz.canvas({
  import cetz.draw: *

  let stroke-color = rgb("#03A9F4").darken(50%)
  let fill-color = rgb("#03A9F4").darken(30%)
  let a = 0.85
  set-style(stroke: stroke-color + 1.5pt, fill: fill-color)

  rect((0, 0), (10.5-0.15, 7-0.15), fill: none)

  rect((0.5, 0.5), (rel: (a, a)))
  rect((1.5, 0.5), (rel: (a, a)))
  rect((2.5, 0.5), (rel: (a, a)))
  rect((1.5, 1.5), (rel: (a, a)))
  rect((2.5, 1.5), (rel: (a, a)))
  rect((2.5, 2.5), (rel: (a, a)))

  rect((4, 0.5), (rel: (a, a)))
  rect((5, 0.5), (rel: (a, a)))
  rect((5, 1.5), (rel: (a, a)))
  rect((5, 2.5), (rel: (a, a)))
  rect((5, 3.5), (rel: (a, a)))
  rect((5, 4.5), (rel: (a, a)))

  rect((6.5, 0.5), (rel: (a, a)))
  rect((7.5, 0.5), (rel: (a, a)))
  rect((6.5, 1.5), (rel: (a, a)))
  rect((7.5, 1.5), (rel: (a, a)))
  rect((7.5, 2.5), (rel: (a, a)))
  rect((7.5, 3.5), (rel: (a, a)))

  rect((9, 0.5), (rel: (a, a)))
  rect((9, 1.5), (rel: (a, a)))
  rect((9, 2.5), (rel: (a, a)))
  rect((9, 3.5), (rel: (a, a)))
  rect((9, 4.5), (rel: (a, a)))
  rect((9, 5.5), (rel: (a, a)))

  content(((10.5-0.15)/2, -0.5), [For N = #text(fill: red)[6]])
})
