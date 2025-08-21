func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {
    // Create a set for numbers less than x multiple values -> according to the count of inMultiples members (set members can't be duplicate)
    // use guard to detect unsatisfied case
    // Sum all numbers and return values
    var setNumber: Set<Int> = []
    guard !inMultiples.isEmpty else { return 0 }
    for i in 0...inMultiples.count - 1 {
      guard inMultiples[i] <= limit else { continue }
      for j in inMultiples[i]...limit {
        if limit > j && j.isMultiple(of: inMultiples[i]) {
          setNumber.insert(j)
        }
      }
    }
        
    var result = 0
    for num in setNumber {
        result += num
    }
    return result
}