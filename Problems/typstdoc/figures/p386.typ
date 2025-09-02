#import "@preview/cetz:0.4.1"


#cetz.canvas(length: 20pt, {
  import cetz.draw: *

  group({
    rect(
      stroke: yellow,
      (0, 0), (4, 4)
    )
    rect(
      stroke: luma(30%),
      (0.75, 1), (2.75, 3)
    )
  })

  group({
    translate(x:4.5, y:0)
    rect(
      stroke: red,
      (0, 0), (8, 4)
    )
    line(
      stroke: (paint: luma(50%), dash: "dotted"),
      (2.75, 0.75), (2.75, 2.75), (0.75, 2.75)
    )
    line(
      stroke: luma(30%), close: true,
      (0.75, 0.75), (2.75, 0.75), (1.75, 1.75), (2.75, 2.75), (1.75, 3.75), (0.75, 2.75)
    )
    line(
      stroke: (paint: luma(50%), dash: "dotted"),
      (4.5, 0.75), (4.5, 2.75), (6.5, 2.75)
    )
    line(
      stroke: luma(30%), close: true,
      (4.5, 0.75), (6.5, 0.75), (6.5, 2.75), (5.5, 3.75), (4.5, 2.75), (5.5, 1.75)
    )
  })

  group({
    translate(x:0, y:-5.5)
    rect(
      stroke: green,
      (0, 0), (4, 5)
    )
    line(
      stroke: (paint: luma(50%), dash: "dotted"),
      (0.75, 1.5), (0.75, 3.5)
    )
    line(
      stroke: (paint: luma(50%), dash: "dotted"),
      (2.75, 1.5), (2.75, 3.5)
    )
    line(
      stroke: luma(30%), close: true,
      (0.75, 1.5), (2.75, 1.5), (3.75, 2.5), (2.75, 3.5), (0.75, 3.5), (1.75, 2.5),
    )
  })

  group({
    translate(x:4.5, y:-5.5)
    rect(
      stroke: blue,
      (0, 0), (8, 5)
    )
    rect(
      stroke: (paint: luma(50%), dash: "dotted"), close: true,
      (0.75, 1.5), (2.75, 3.5)
    )
    line(
      stroke: luma(30%), close: true,
      (0.75, 1.5), (1.75, 0.5), (2.75, 1.5), (0.75, 3.5), (1.75, 4.5), (2.75, 3.5)
    )
    rect(
      stroke: (paint: luma(50%), dash: "dotted"), close: true,
      (4.5, 1.5), (6.5, 3.5)
    )
    line(
      stroke: (paint: luma(50%), dash: "dotted"),
      (4.5, 1.5), (5.5, 2.5)
    )
    line(
      stroke: luma(30%), close: true,
      (6.5, 1.5), (7.5, 2.5), (5.5, 4.5), (4.5, 3.5)
    )
  })
})
