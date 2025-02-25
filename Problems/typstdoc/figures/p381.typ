#import "@preview/cetz:0.3.2"


#cetz.canvas(length: 16pt, {
  import cetz.draw: *

  let fill-color-1 = yellow.lighten(20%)
  let fill-color-2 = orange.lighten(20%)

  let arrow = line(
    stroke: (thickness: 2pt, join: "round"), fill: white, close: true,
    (0, 0), (1, 0), (1, -0.25), (2, 0.25), (1, 0.75), (1, 0.5), (0, 0.5)
  )

  group({
    line(
      stroke: (thickness: 2pt, join: "bevel"), fill: fill-color-1, close: true,
      (0, 0), (5, 0), (0, 5)
    )
    line(stroke: 2pt+gray, (2.5, 0.05), (2.5, 2.45), (0.05, 2.5))
    arc(stroke: 1pt, mark: (end: "stealth", fill: black),
      (0.6, 2.9), radius: 0.6, start: 135deg, delta: 150deg
    )
    arc(stroke: 1pt, mark: (end: "stealth", fill: black),
      (2.9, 0.5), radius: 0.6, start: 0deg, delta: 150deg
    )
  })

  group({
    translate(x:5.5, y:2.25)
    arrow
  })

  group({
    translate(x:8.5, y:1.25)
    rect(
      stroke: 2pt, fill: fill-color-1,
      (0, 0), (2.5, 2.5)
    )
    line(
      stroke: 1pt, fill: fill-color-2, close: true,
      (0.2, -0.05), (2.5, 0), (2.5, 2.5)
    )
    line(
      stroke: 1pt, fill: fill-color-2, close: true,
      (-0.05, 0.2), (0, 2.5), (2.5, 2.5)
    )
  })

  group({
    translate(x:12.5, y:2.25)
    arrow
  })

  group({
    translate(x:15.5, y:1.25)
    rect(
      stroke: 2pt, fill: fill-color-2,
      (0, 0), (2.5, 2.5)
    )
    line(stroke: 2pt+gray, (0.05, 0.05), (2.45, 2.45))
    arc(stroke: 1pt, mark: (end: "stealth", fill: black),
      (1.1, 1.8), radius: 0.6, start: 135deg, delta: 150deg
    )
  })

  group({
    translate(x:19.5, y:2.25)
    arrow
  })

  group({
    translate(x:22.5, y:1.25)
    line(
      stroke: (thickness: 2pt, join: "bevel"), fill: fill-color-1, close: true,
      (0, 0), (2.5, 0), (2.5, 2.5)
    )
  })
})
