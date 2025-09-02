#import "@preview/cetz:0.4.1"


#cetz.canvas({
  import cetz.draw: *

  let fill-color = blue.lighten(80%)

  circle((0, 0), radius: 0.5, fill: fill-color, name: "c1")
  circle((-2, 1.5), radius: 0.5, fill: fill-color, name: "c2")
  circle((2, 1.5), radius: 0.5, fill: fill-color, name: "c3")
  circle((-3, 3), radius: 0.5, fill: fill-color, name: "c4")
  circle((-1, 3), radius: 0.5, fill: fill-color, name: "c5")
  circle((1, 3), radius: 0.5, fill: fill-color, name: "c6")
  circle((3, 3), radius: 0.5, fill: fill-color, name: "c7")
  circle((-2, 4.5), radius: 0.5, fill: fill-color, name: "c8")
  circle((2, 4.5), radius: 0.5, fill: fill-color, name: "c9")
  circle((0, 6), radius: 0.5, fill: fill-color, name: "c10")

  line("c2", "c1", mark: (end: "stealth", fill: black))
  line("c3", "c1", mark: (end: "stealth", fill: black))
  line("c4", "c2", mark: (end: "stealth", fill: black))
  line("c5", "c2", mark: (end: "stealth", fill: black))
  line("c6", "c3", mark: (end: "stealth", fill: black))
  line("c7", "c3", mark: (end: "stealth", fill: black))
  line("c8", "c4", mark: (end: "stealth", fill: black))
  line("c8", "c5", mark: (end: "stealth", fill: black))
  line("c9", "c6", mark: (end: "stealth", fill: black))
  line("c9", "c7", mark: (end: "stealth", fill: black))
  line("c10", "c8", mark: (end: "stealth", fill: black))
  line("c10", "c9", mark: (end: "stealth", fill: black))
})
