import Foundation

// declare Error enum for throwing function
enum GrainsError: Error {
    case inputTooHigh
    case inputTooLow
  }
struct Grains {
  static func square(_ num: Int) throws -> UInt64 {
    
    // error handling with throw
    if num < 1 {
      throw GrainsError.inputTooLow
    } else if num > 64 {
      throw GrainsError.inputTooHigh
    }

    let result = UInt64(pow(2, Double(num - 1)))

    return result
  }

  static var total: UInt64 {
    var sum: UInt64 = 0
    for i in 1...64 {
      sum += try! Grains.square(i) // use try! because we know for the fact that there can't be error throws at us on runtime
    }
    return UInt64(sum)
  }
}