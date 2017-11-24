import sequtils, strutils, sets

converter toCharArray(s: string): seq[char] = cast[seq[char]](s)

proc ngram[T](s: seq[T], n: int): seq[seq[T]] =
  result = newSeqWith(s.len - n + 1, newSeq[T]())
  for i in 0..s.len-n:
    result[i].add(s[i..<i+n])

when isMainModule:
  const
    a = "paraparaparadise"
    b = "paragraph"
  var
    x = ngram(a.replace(" ", ""), 2).toSet
    y = ngram(b.replace(" ", ""), 2).toSet
  echo x + y
  echo x * y
  echo x - y
  echo "se" in x
  echo "se" in y
