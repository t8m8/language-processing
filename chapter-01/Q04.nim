import strutils, tables, sequtils, future

proc words(s: string): seq[string] =
  s.replace(",", "").replace(".", "").split

proc cnts(idxs: seq[int], n: int): seq[int] =
  result = newSeqWith(n, 2)
  for i in idxs:
    result[i] = 1

proc solve(s: string, idxs: seq[int]): TableRef[string, int] =
  result = newTable[string, int]()
  var
    words = s.words
    cnts = idxs.cnts(words.len)
  for i in 0..<words.len:
      result.add(words[i][0..<cnts[i]], i + 1)

when isMainModule:
  const
    str = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."
    idxs = @[1, 5, 6, 7, 8, 9, 15, 16, 19].map((x) => x - 1)
  echo solve(str, idxs)
