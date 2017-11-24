import strutils, random

proc typoglycemia(s: string): string =
  var
    words = s.split
    reswords = newSeq[string]()
  for w in words:
    if w.len <= 4:
      reswords.add w
      continue
    var mid = w[1..w.len-2]
    mid.shuffle
    reswords.add w[0] & mid & w[w.len-1]
  result = reswords.join(" ")

when isMainModule:
  const str = "I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind"
  echo str.typoglycemia
