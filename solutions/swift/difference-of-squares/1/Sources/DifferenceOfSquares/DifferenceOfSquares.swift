import Foundation

class Squares {
  var num: Int

  init(_ num: Int) {
    self.num = num
  }

  var squareOfSum: Int {
    var sum = 0
    for each in 1...self.num {
      sum += each
    }
    let result = Int(pow(Double(sum), 2))
    return result
  }

  var sumOfSquares: Int {
    var sum = 0
    for each in 1...self.num {
      sum += Int(pow(Double(each), 2))
    }
    return sum
  }

  var differenceOfSquares: Int {
    return self.squareOfSum - self.sumOfSquares
  }
}