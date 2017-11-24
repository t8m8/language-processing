
proc solve(x, y, z: any): string =
  $x & "時の" & $y & "は" & $z

when isMainModule:
  const
    x = "12"
    y = "気温"
    z = 22.4
  echo solve(x, y, z)