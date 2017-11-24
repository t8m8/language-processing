import strutils, sequtils, future

proc lens(s: string): seq[int] =
  var words = s.replace(",", "").replace(".", "").split
  result = words.map((w) => w.len)

when isMainModule:
  const str = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."
  echo str.lens