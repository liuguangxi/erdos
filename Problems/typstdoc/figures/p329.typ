#import "@preview/cetz:0.4.1"


#cetz.canvas(length: 0.8cm, {
  import cetz.draw: *

  let seg-h(center) = {
    let cx = center.at(0)
    let cy = center.at(1)
    line(stroke: 1.5pt + yellow.darken(50%), fill: green.lighten(20%), close: true,
      (cx - 0.55, cy), (cx - 0.35, cy - 0.2), (cx + 0.35, cy - 0.2),
      (cx + 0.55, cy), (cx + 0.35, cy + 0.2), (cx - 0.35, cy + 0.2)
    )
  }

  let seg-v(center) = {
    let cx = center.at(0)
    let cy = center.at(1)
    line(stroke: 1.5pt + yellow.darken(50%), fill: green.lighten(20%), close: true,
      (cx, cy - 0.55), (cx - 0.2, cy - 0.35), (cx - 0.2, cy + 0.35),
      (cx, cy + 0.55), (cx + 0.2, cy + 0.35), (cx + 0.2, cy - 0.35)
    )
  }

  // Background
  rect((-1, -5), (14.1, 3.2), stroke: none, fill: luma(50))

  // '0'
  seg-h((0.55, 0))
  seg-v((0, 0.55))
  seg-v((1.1, 0.55))
  seg-v((0, 1.65))
  seg-v((1.1, 1.65))
  seg-h((0.55, 2.2))

  // '1'
  seg-v((1.1+3, 0.55))
  seg-v((1.1+3, 1.65))

  // '2'
  seg-h((0.55+6, 0))
  seg-v((0+6, 0.55))
  seg-h((0.55+6, 1.1))
  seg-v((1.1+6, 1.65))
  seg-h((0.55+6, 2.2))

  // '3'
  seg-h((0.55+9, 0))
  seg-v((1.1+9, 0.55))
  seg-h((0.55+9, 1.1))
  seg-v((1.1+9, 1.65))
  seg-h((0.55+9, 2.2))

  // '4'
  seg-v((1.1+12, 0.55))
  seg-h((0.55+12, 1.1))
  seg-v((0+12, 1.65))
  seg-v((1.1+12, 1.65))

  // '5'
  seg-h((0.55, 0-4))
  seg-v((1.1, 0.55-4))
  seg-h((0.55, 1.1-4))
  seg-v((0, 1.65-4))
  seg-h((0.55, 2.2-4))

  // '6'
  seg-h((0.55+3, 0-4))
  seg-v((0+3, 0.55-4))
  seg-v((1.1+3, 0.55-4))
  seg-h((0.55+3, 1.1-4))
  seg-v((0+3, 1.65-4))
  seg-h((0.55+3, 2.2-4))

  // '7'
  seg-v((1.1+6, 0.55-4))
  seg-v((1.1+6, 1.65-4))
  seg-h((0.55+6, 2.2-4))

  // '8'
  seg-h((0.55+9, 0-4))
  seg-v((0+9, 0.55-4))
  seg-v((1.1+9, 0.55-4))
  seg-h((0.55+9, 1.1-4))
  seg-v((0+9, 1.65-4))
  seg-v((1.1+9, 1.65-4))
  seg-h((0.55+9, 2.2-4))

  // '9'
  seg-h((0.55+12, 0-4))
  seg-v((1.1+12, 0.55-4))
  seg-h((0.55+12, 1.1-4))
  seg-v((0+12, 1.65-4))
  seg-v((1.1+12, 1.65-4))
  seg-h((0.55+12, 2.2-4))
})
