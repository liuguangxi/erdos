#import "@preview/cetz:0.3.2"


#cetz.canvas({
  import cetz.draw: *

  let a = 4.5
  line((0, 0), (a, 0), (a/2, a/2*calc.sqrt(3)), close: true)
  line((0, a/3*calc.sqrt(3)), (a, a/3*calc.sqrt(3)), (a/2, -a/6*calc.sqrt(3)), close: true)
  line((a/6, a/6*calc.sqrt(3)), (a*5/6, a/6*calc.sqrt(3)))
  line((a/3, a/3*calc.sqrt(3)), (a*2/3, 0))
  line((a*2/3, a/3*calc.sqrt(3)), (a/3, 0))
  content(
    (a/2, -a*0.45),
    box(stroke: gray, inset: 4pt)[Each triangle has LEVEL $n$]
  )
})
