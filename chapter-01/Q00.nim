
proc reversed(s: string): string =
  result = ""
  for i in countDown(s.len-1, 0):
    result &= s[i]

when isMainModule:
  const str = "stressed"
  echo str.reversed
