#import "@preview/cetz:0.4.1"

#cetz.canvas({
  import cetz.draw: *

  let a = 3
  line((0, 0), (a, 0), (a/2, a/2*calc.sqrt(3)), close: true)
  content((a/2, -a/6), box[LEVEL 1])

  let os = 4
  line((os+0, 0), (os+3, 0), (os+a/2, a/2*calc.sqrt(3)), close: true)
  line((os+a/4, a/4*calc.sqrt(3)), (os+a*3/4, a/4*calc.sqrt(3)))
  line((os+a/4, a/4*calc.sqrt(3)), (os+a/2, 0))
  line((os+a/2, 0), (os+a*3/4, a/4*calc.sqrt(3)))
  content((os+a/2, -a/6), box[LEVEL 2])

  let os = 8
  line((os+0, 0), (os+3, 0), (os+a/2, a/2*calc.sqrt(3)), close: true)
  line((os+a*3/8, a*3/8*calc.sqrt(3)), (os+a*5/8, a*3/8*calc.sqrt(3)))
  line((os+a/4, a/4*calc.sqrt(3)), (os+a*3/4, a/4*calc.sqrt(3)))
  line((os+a/8, a/8*calc.sqrt(3)), (os+a*7/8, a/8*calc.sqrt(3)))
  line((os+a*3/8, a*3/8*calc.sqrt(3)), (os+a*3/4, 0))
  line((os+a/8, a/8*calc.sqrt(3)), (os+a/4, 0))
  line((os+a/4, a/4*calc.sqrt(3)), (os+a/2, 0))
  line((os+a/4, 0), (os+a*5/8, a*3/8*calc.sqrt(3)))
  line((os+a/2, 0), (os+a*3/4, a/4*calc.sqrt(3)))
  line((os+a*3/4, 0), (os+a*7/8, a/8*calc.sqrt(3)))
  content((os+a/2, -a/6), box[LEVEL 4])

  let os = 12
  content((os+a/2, a/2), box[... ... ... ...])
})
