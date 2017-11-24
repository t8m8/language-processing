import unicode

proc extracted(s: seq[Rune]): seq[Rune] =
  result = newSeq[Rune]()
  for i in 0..<s.len:
    if i mod 2 == 1:
      result.add s[i]

when isMainModule:
  const str = "パタトクカシーー".toRunes
  echo str.extracted
