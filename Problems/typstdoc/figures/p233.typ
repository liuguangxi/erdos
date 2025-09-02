#import "@preview/cetz:0.4.1"


#cetz.canvas({
  import cetz.draw: *

  rect((0, 0), (rel: (1, 1)), stroke: luma(100)+1.5pt)
  rect((1, 0), (rel: (1, 1)), stroke: luma(100)+1.5pt)
  rect((0, 1), (rel: (1, 1)), stroke: luma(100)+1.5pt)
  rect((1, 1), (rel: (1, 1)), stroke: luma(100)+1.5pt)
  line((0, 1), (1, 2), stroke: red+1.5pt)
  line((0, 0), (2, 0), (2, 2), stroke: blue+3pt)

  let os = 2.5
  rect((0+os, 0), (rel: (1, 1)), stroke: luma(100)+1.5pt)
  rect((1+os, 0), (rel: (1, 1)), stroke: luma(100)+1.5pt)
  rect((0+os, 1), (rel: (1, 1)), stroke: luma(100)+1.5pt)
  rect((1+os, 1), (rel: (1, 1)), stroke: luma(100)+1.5pt)
  line((0+os, 1), (1+os, 2), stroke: red+1.5pt)
  line((0+os, 0), (1+os, 0), (1+os, 1), (2+os, 1), (2+os, 2), stroke: blue+3pt)
})
