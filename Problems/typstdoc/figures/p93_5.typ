#import "@preview/cetz:0.4.1"


#cetz.canvas(length: 10pt, {
  import cetz.draw: *

  let brown = orange.darken(40%)
  let green0 = rgb("#B2D30A")
  let os = 0.12
  let sqr-mark(cor) = line(cor, (rel: (0.24, 0.24)), stroke: black+3.6pt)

  line((1, 6.5), (2, 4.6), stroke: yellow+3pt)
  line((2.6, 1.2), (2.2, 4), stroke: yellow+3pt)
  line((2, 4.6), (3.6, 7), stroke: yellow+3pt)
  line((2.9, 1.1), (3.6, 7), stroke: yellow+3pt)
  line((2.2, 4), (5, 6), stroke: yellow+3pt)
  line((5, 6), (3.6, 7.8), stroke: yellow+3pt)
  line((3.3, 9.7), (3.6, 7.8), stroke: yellow+3pt)
  line((5, 6), (5, 8), stroke: yellow+3pt)
  line((5, 8), (7.8, 8.8), stroke: yellow+3pt)
  line((7.8, 8.8), (8.4, 6.6), stroke: yellow+3pt)
  line((7.2, 5), (8.4, 6.6), stroke: yellow+3pt)
  line((5, 6), (8.4, 6.6), stroke: brown+3pt)
  line((7.2, 5), (5, 8), stroke: orange+3pt)
  line((7.2, 5), (9.6, 5.5), stroke: orange+3pt)
  line((9.6, 5.5), (11, 7.4), stroke: yellow+3pt)
  line((7.2, 5), (7.5, 1.6), stroke: yellow+3pt)
  line((5, 0.4), (7.5, 1.6), stroke: yellow+3pt)
  line((4.6, 0.6), (9, 4.8), stroke: yellow+3pt)
  line((8.3, 2.5), (9, 4.8), stroke: yellow+3pt)
  line((8.3, 2.5), (10, 3), stroke: yellow+3pt)

  sqr-mark((2-os, 4.6-os))
  sqr-mark((2.2-os, 4-os))
  sqr-mark((3.6-os, 7-os))
  sqr-mark((5-os, 6-os))
  sqr-mark((3.6-os, 7.8-os))
  sqr-mark((5-os, 8-os))
  sqr-mark((7.8-os, 8.8-os))
  sqr-mark((8.4-os, 6.6-os))
  sqr-mark((7.2-os, 5-os))
  sqr-mark((9.6-os, 5.5-os))
  sqr-mark((7.5-os, 1.6-os))
  sqr-mark((9-os, 4.8-os))
  sqr-mark((8.3-os, 2.5-os))

  hobby((3.5, 10), (1, 6.5), (0, 4), (3, 1), (5, 0.4), (9, 1), (10, 3), (11, 7.5), omega: 0, stroke: 3pt)

  content((0.5, 11), anchor: "south-west", [*Poisonous Toad*])
})
