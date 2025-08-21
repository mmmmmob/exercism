import Foundation

func gigasecond(from: Date) -> Date {
  let futureDate = Date(timeInterval: 1000000000, since: from)
  return futureDate
}

