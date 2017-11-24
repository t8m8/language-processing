import sequtils, strutils

proc ngram[T](s: seq[T], n: int): seq[seq[T]] =
  result = newSeqWith(s.len - n + 1, newSeq[T]())
  for i in 0..s.len-n:
    result[i].add(s[i..<i+n])

when isMainModule:
  const str = "I am an NLPer"
  echo ngram(str.split(), 2)
  echo ngram(cast[seq[char]](str.replace(" ", "")), 2)
