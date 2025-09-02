#import "@preview/cetz:0.4.1"


#cetz.canvas(length: 1.5cm, {
  import cetz.draw: *

  for x in range(-4, 25) {
    if calc.rem(x, 5) != 0 {
      line((x/5, -1.2), (x/5, 5.4), stroke: 0.5pt+luma(220))
    }
  }
  for y in range(-5, 27) {
    if calc.rem(y, 5) != 0 {
      line((-0.9, y/5), (4.9, y/5), stroke: 0.5pt+luma(220))
    }
  }
  for x in range(-4, 25) {
    if x != 0 and calc.rem(x, 5) == 0 {
      line((x/5, -1.2), (x/5, 5.4), stroke: 1pt+luma(180))
    }
  }
  for y in range(-5, 27) {
    if y != 0 and  calc.rem(y, 5) == 0 {
      line((-0.9, y/5), (4.9, y/5), stroke: 1pt+luma(180))
    }
  }
  line((0, -1.2), (0, 5.4), stroke: 1pt+luma(60))
  line((-0.9, 0), (4.9, 0), stroke: 1pt+luma(60))

  circle((3, -0.1), radius: 1.005, stroke: 1.5pt)
  circle((2.1, 3), radius: 2.326, stroke: 1.5pt)
  line((4, 0), (0, 4), stroke: 1.5pt)

  circle((4, 0), radius: 0.06, stroke: 0.8pt, fill: luma(60))
  circle((0, 4), radius: 0.06, stroke: 0.8pt, fill: luma(60))
  circle((2, 0), radius: 0.06, stroke: 0.8pt, fill: luma(60))
  circle((0, 2), radius: 0.06, stroke: 0.8pt, fill: luma(60))
  circle((3.1, 0.9), radius: 0.06, stroke: 0.8pt, fill: blue)
  circle((2.38, 0.69), radius: 0.06, stroke: 0.8pt, fill: luma(60))

  content((4.15, 0.15), $A$)
  content((0.2, 4.05), $B$)
  content((2.2, 0.15), $C$)
  content((0.15, 2.15), $D$)
  content((3.2, 1.15), $E$)
  content((2.45, 0.95), $F$)
})
