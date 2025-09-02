#import "@preview/cetz:0.4.1"


#cetz.canvas({
  import cetz.draw: *

  let a = 2.5
  set-style(stroke: 3pt)

  line((0, -a), (a*calc.cos(210deg), a*calc.sin(210deg)), (a*calc.cos(150deg), a*calc.sin(150deg)),
    (0, a), (a*calc.cos(30deg), a*calc.sin(30deg)), (a*calc.cos(-30deg), a*calc.sin(-30deg)))

  content((-1.4,-2.2), [*1*])
  content((-2.6,0), [*2*])
  content((-1.4,2.2), [*3*])
  content((1.4,2.2), [*4*])
  content((2.6,0), [*5*])
})
