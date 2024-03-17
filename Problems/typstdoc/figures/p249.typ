#import "@preview/cetz:0.2.1"


#cetz.canvas(length: 60pt, {
  import cetz.draw: *

  for x in range(0, 3) {
    for y in range(0, 3) {
      rect((x, y), (rel: (1, 1)), stroke: luma(100))
    }
  }

  merge-path(
    stroke: red, fill: rgb(255, 0, 0, 50), close: true, {
    arc((0, 0), start: -90deg, stop: 0deg, radius: 3)
    arc((3, 3), start: 0deg, stop: -90deg, radius: 2)
    arc((1, 1), start: 180deg, stop: 90deg, radius: 1)
    arc((2, 2), start: 90deg, stop: 180deg, radius: 2)
  })
})
