#import "@preview/cetz:0.3.2"


#cetz.canvas({
  import cetz.draw: *

  let a = 0.8
  line((3*a, 0), (1.5*a, 1.5*calc.sqrt(3)*a), (-1.5*a, 1.5*calc.sqrt(3)*a),
  (-3*a, 0), (-1.5*a, -1.5*calc.sqrt(3)*a), (1.5*a, -1.5*calc.sqrt(3)*a), close: true)
  line((-3*a, 0), (3*a, 0))
  line((-1.5*a, 1.5*calc.sqrt(3)*a), (1.5*a, -1.5*calc.sqrt(3)*a))
  line((1.5*a, 1.5*calc.sqrt(3)*a), (-1.5*a, -1.5*calc.sqrt(3)*a))
  line((-2*a, calc.sqrt(3)*a), (2*a, calc.sqrt(3)*a))
  line((-2.5*a, 0.5*calc.sqrt(3)*a), (2.5*a, 0.5*calc.sqrt(3)*a))
  line((-2.5*a, -0.5*calc.sqrt(3)*a), (2.5*a, -0.5*calc.sqrt(3)*a))
  line((-2*a, -calc.sqrt(3)*a), (2*a, -calc.sqrt(3)*a))
  line((-2.5*a, 0.5*calc.sqrt(3)*a), (-0.5*a, -1.5*calc.sqrt(3)*a))
  line((-2*a, calc.sqrt(3)*a), (0.5*a, -1.5*calc.sqrt(3)*a))
  line((-0.5*a, 1.5*calc.sqrt(3)*a), (2*a, -calc.sqrt(3)*a))
  line((0.5*a, 1.5*calc.sqrt(3)*a), (2.5*a, -0.5*calc.sqrt(3)*a))
  line((-0.5*a, 1.5*calc.sqrt(3)*a), (-2.5*a, -0.5*calc.sqrt(3)*a))
  line((0.5*a, 1.5*calc.sqrt(3)*a), (-2*a, -calc.sqrt(3)*a))
  line((2*a, calc.sqrt(3)*a), (-0.5*a, -1.5*calc.sqrt(3)*a))
  line((2.5*a, 0.5*calc.sqrt(3)*a), (0.5*a, -1.5*calc.sqrt(3)*a))
})
