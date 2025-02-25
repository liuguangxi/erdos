#import "@preview/cetz:0.3.2"


#cetz.canvas(length: 60pt, {
  import cetz.draw: *

  let fill-color = blue.lighten(90%)

  line((0, 3), (0, 0), (5, 0), stroke: 2pt)

  circle((1, 1), radius: 1, fill: fill-color, stroke: 1.5pt)
  circle((3, 1), radius: 1, fill: fill-color, stroke: 1.5pt)
  circle((2, 1/4), radius: 1/4, fill: fill-color, stroke: 1pt)
  circle((5/3, 1/9), radius: 1/9, fill: fill-color, stroke: 1pt)
  circle((3/2, 1/16), radius: 1/16, fill: fill-color, stroke: 0.5pt)
})
