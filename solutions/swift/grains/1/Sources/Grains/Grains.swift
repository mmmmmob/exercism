import Foundation

  enum GrainsError: Error {
    case inputTooHigh
    case inputTooLow
  }

struct Grains {


  static func square(_ num: Int) throws -> UInt64 {
    if num < 1 {
      throw GrainsError.inputTooLow
    } else if num > 64 {
      throw GrainsError.inputTooHigh
    }

    let result = UInt64(pow(2, Double(num - 1)))

    return result
  }

  static var total: UInt64 {
    return UInt64.max
  }
}