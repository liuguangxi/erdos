#import "@preview/cetz:0.3.2"


#cetz.canvas(length: 6pt, {
  import cetz.draw: *

  let a = 6
  let b = 18
  let dx = -9.9
  let dy = 3.5

  line(stroke: none, fill: orange.lighten(30%), close: true,
    (a - dx, 0 - dy), (0.5*a - dx, 0.5*calc.sqrt(3)*a - dy), (-0.5*a - dx, 0.5*calc.sqrt(3)*a - dy), (-a - dx, 0 - dy), (-0.5*a - dx, -0.5*calc.sqrt(3)*a - dy), (0.5*a - dx, -0.5*calc.sqrt(3)*a - dy)
  )
  line(stroke: 2pt, close: true,
    (b, 0), (0.5*b, 0.5*calc.sqrt(3)*b), (-0.5*b, 0.5*calc.sqrt(3)*b), (-b, 0), (-0.5*b, -0.5*calc.sqrt(3)*b), (0.5*b, -0.5*calc.sqrt(3)*b)
  )
})
