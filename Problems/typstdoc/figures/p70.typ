#import "@preview/cetz:0.2.1"


#cetz.canvas(length: 1.5pt, {
  import cetz.draw: *

  let r1 = 64
  let r2 = 32
  let r3 = 16
  set-style(fill: luma(200), stroke: 1.5pt)
  circle((0, 0), radius: r1)
  circle((95.99992087, -0.12325953), radius: r2)
  circle((40*calc.sqrt(3), -40), radius: r3)
  content((0, 0), text(size: 18pt)[*R#sub[1]*])
  content((95.99992087, -0.12325953), text(size: 18pt)[*R#sub[2]*])
  content((40*calc.sqrt(3), -40), text(size: 18pt)[*R#sub[3]*])

  let k1 = 1/r1
  let k2 = 1/r2
  let k3 = 1/r3
  let k = k1 + k2 + k3 + 2*calc.sqrt(k1*k2 + k2*k3 + k3*k1)
  let r = 1/k
  set-style(fill: yellow)
  circle((65.44740555, -19.94442188), radius: r)
})
