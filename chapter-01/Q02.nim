import unicode

proc conbine(a, b: seq[Rune]): seq[Rune] =
  result = newSeq[Rune]()
  var (i, j) = (0, 0)
  while i < a.len and j < b.len:
    if i < a.len:
      result.add a[i]
      i.inc
    if j < b.len:
      result.add b[j]
      j.inc

when isMainModule:
  const
    a = "パトカー".toRunes
    b = "タクシー".toRunes
  echo conbine(a, b)