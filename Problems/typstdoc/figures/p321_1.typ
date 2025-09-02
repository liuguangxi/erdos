#import "@preview/cetz:0.4.1"


#cetz.canvas(length: 6pt, {
  import cetz.draw: *

  let a = 6
  let b = 18
  let dx = a
  let dy = calc.sqrt(3)*a

  line(stroke: none, fill: orange.lighten(30%), close: true,
    (a - dx, 0 - dy), (0.5*a - dx, 0.5*calc.sqrt(3)*a - dy), (-0.5*a - dx, 0.5*calc.sqrt(3)*a - dy), (-a - dx, 0 - dy), (-0.5*a - dx, -0.5*calc.sqrt(3)*a - dy), (0.5*a - dx, -0.5*calc.sqrt(3)*a - dy)
  )
  line(stroke: 2pt, close: true,
    (b, 0), (0.5*b, 0.5*calc.sqrt(3)*b), (-0.5*b, 0.5*calc.sqrt(3)*b), (-b, 0), (-0.5*b, -0.5*calc.sqrt(3)*b), (0.5*b, -0.5*calc.sqrt(3)*b)
  )

  arc(stroke: none, fill: blue, mode: "PIE",
    (-dx+2, -dy), radius: 2, start: 0deg, delta: 87deg
  )
  line(stroke: purple+1.5pt, mark: (end: "stealth", fill: purple),
    (-dx+1.5*a, -dy), (-dx, -dy), (-dx+0.5, -dy+11*calc.sqrt(3)*0.5)
  )
  content((-dx+2.5, -dy+2.5), $theta$)
})
