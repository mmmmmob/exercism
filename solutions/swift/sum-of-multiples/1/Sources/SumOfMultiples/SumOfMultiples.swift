func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
  // create set for number less than x multiple values -> according to count of inMultiples members (set members can't be duplicate)
  // push num of multiple determine with .isMultiple(of:_ -> Bool) inside a set
  // sum all number and return values
  var setNumber: Set<Int> = []

  if inMultiples.count == 0 { return 0 } else {
    for i: Int in 0...inMultiples.count - 1 {
      if inMultiples[i] > limit { continue } else {
        for j in inMultiples[i]...limit {
          if limit > j && j.isMultiple(of: inMultiples[i]){
            setNumber.insert(j)
          }
        }
      }
    }
  }

  var result = 0

  for num in setNumber {
    result += num
  }

  return result
}