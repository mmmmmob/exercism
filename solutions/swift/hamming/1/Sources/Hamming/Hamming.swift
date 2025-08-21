enum Seq: Error {
  case isNotEqual
}

func compute(_ dnaSequence: String, against: String) throws -> Int? {
  if dnaSequence.count != against.count {
    throw Seq.isNotEqual
  }

  if dnaSequence.count == 0 {
    return 0
  } else {
    var result: Int? = 0

  for i in 0...dnaSequence.count - 1 {
    let index = dnaSequence.index(dnaSequence.startIndex, offsetBy: i)
    if dnaSequence[index] != against[index] {
      result! += 1
    }
  }

  return result!
  }
}