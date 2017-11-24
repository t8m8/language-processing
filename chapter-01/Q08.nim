
proc cipher(s: string): string =
  result = s
  for i in 0..<s.len:
    if 'a'.ord <= s[i].ord and s[i].ord <= 'z'.ord:
      result[i] = chr(219 - s[i].ord)

when isMainModule:
  const str = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."
  echo str.cipher
  echo str.cipher.cipher
