#import "@preview/cetz:0.3.2"


#cetz.canvas(length: 10pt, {
  import cetz.draw: *

  let brown = orange.darken(40%)
  let os = 0.12
  let sqr-mark(cor) = line(cor, (rel: (0.24, 0.24)), stroke: black+3.6pt)

  line((2.3, 0), (3, 2.8), stroke: yellow+3pt)
  line((3, 0), (4.3, 2.5), stroke: yellow+3pt)
  line((7.9, 0), (7.5, 3.5), stroke: yellow+3pt)
  line((8.4, 0), (8.8, 3.6), stroke: yellow+3pt)
  line((3, 2.8), (2.4, 5.2), stroke: yellow+3pt)
  line((4.3, 2.5), (4.9, 5.2), stroke: yellow+3pt)
  line((3, 2.8), (4.9, 5.2), stroke: yellow+3pt)
  line((2.4, 5.2), (4.9, 5.2), stroke: yellow+3pt)
  line((4.9, 5.2), (6.3, 5.2), stroke: yellow+3pt)
  line((7.5, 3.5), (6.3, 5.2), stroke: yellow+3pt)
  line((7.5, 3.5), (8.3, 6), stroke: yellow+3pt)
  line((8.8, 3.6), (8.3, 6), stroke: yellow+3pt)
  line((6.3, 5.2), (8.3, 6), stroke: yellow+3pt)
  line((2.4, 5.2), (1.5, 7.6), stroke: yellow+3pt)
  line((0.5, 6), (1.5, 7.6), stroke: yellow+3pt)
  line((2.4, 5.2), (3, 7.5), stroke: orange+3pt)
  line((1.5, 7.6), (3, 7.5), stroke: yellow+3pt)
  line((3, 7.5), (5, 7.6), stroke: yellow+3pt)
  line((4.9, 5.2), (5, 7.6), stroke: brown+3pt)
  line((5, 7.6), (6.3, 8), stroke: yellow+3pt)
  line((6.3, 5.2), (6.3, 8), stroke: orange+3pt)
  line((5, 7.6), (7.5, 8.6), stroke: yellow+3pt)
  line((7.5, 8.6), (8.9, 9.6), stroke: yellow+3pt)
  line((8.3, 6), (8.9, 9.6), stroke: yellow+3pt)
  line((8.3, 6), (9.5, 8.3), stroke: yellow+3pt)
  line((7.5, 8.6), (9.5, 8.3), stroke: yellow+3pt)
  line((8.3, 6), (7.5, 8.6), stroke: brown+3pt)
  line((8.9, 9.6), (10, 10.3), stroke: yellow+3pt)
  line((9.5, 8.3), (10.6, 8.9), stroke: yellow+3pt)
  line((10, 10.3), (10.6, 8.9), stroke: yellow+3pt)
  line((10.6, 8.9), (11.2, 8.4), stroke: yellow+3pt)
  line((11.8, 8.8), (11.2, 8.4), stroke: yellow+3pt)
  line((11.8, 8.8), (12, 10.3), stroke: yellow+3pt)
  line((11.2, 10), (10, 10.3), stroke: yellow+3pt)
  line((11.2, 10), (12, 10.3), stroke: yellow+3pt)
  line((10.6, 11.6), (10, 10.3), stroke: yellow+3pt)
  line((10.6, 11.6), (11.2, 10), stroke: yellow+3pt)
  line((11.5, 11.5), (11.2, 10), stroke: yellow+3pt)
  line((11.5, 11.5), (12, 10.3), stroke: yellow+3pt)

  sqr-mark((3-os, 2.8-os))
  sqr-mark((4.3-os, 2.5-os))
  sqr-mark((7.5-os, 3.5-os))
  sqr-mark((8.8-os, 3.6-os))
  sqr-mark((2.4-os, 5.2-os))
  sqr-mark((4.9-os, 5.2-os))
  sqr-mark((6.3-os, 5.2-os))
  sqr-mark((8.3-os, 6-os))
  sqr-mark((1.5-os, 7.6-os))
  sqr-mark((3-os, 7.5-os))
  sqr-mark((5-os, 7.6-os))
  sqr-mark((6.3-os, 8-os))
  sqr-mark((7.5-os, 8.6-os))
  sqr-mark((8.9-os, 9.6-os))
  sqr-mark((9.5-os, 8.3-os))
  sqr-mark((10-os, 10.3-os))
  sqr-mark((10.6-os, 8.9-os))
  sqr-mark((11.2-os, 8.4-os))
  sqr-mark((11.8-os, 8.8-os))
  sqr-mark((12-os, 10.3-os))
  sqr-mark((11.2-os, 10-os))
  sqr-mark((10.6-os, 11.6-os))
  sqr-mark((11.5-os, 11.5-os))

  line((0, 0), (14, 0), stroke: 3pt)

  content((0.5, 12.5), anchor: "south-west", [*Wild Zebra*])
})
