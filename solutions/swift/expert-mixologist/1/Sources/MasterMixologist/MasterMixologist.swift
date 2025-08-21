func timeToPrepare(drinks: [String]) -> Double {
  var time: Double = 0.0
  for drink: String in drinks {
    switch drink {
    case "water", "beer":
      time += 0.5
    case "shot":
      time += 1.0
    case "mixed drink":
      time += 1.5
    case "fancy drink":
      time += 2.5
    case "frozen drink":
      time += 3.0      
    default:
      time += 0.0
    }
  }
  return time
}

func makeWedges(needed: Int, limes: [String]) -> Int {
  var limeCount: Int = 0
  var limeNeeded: Int = needed
  while limeNeeded > 0 {
      switch limes[limeCount] {
      case "small":
        limeNeeded -= 6
        limeCount += 1
      case "medium":
        limeNeeded -= 8
        limeCount += 1
      case "large":
        limeNeeded -= 10
        limeCount += 1
      default:
        limeNeeded -= 0
        limeCount += 0
      }
  }
  return limeCount
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
  let pinPoint: Int = 0
  var minutesLeft: Int = minutesLeft
  var remainingOrders: [[String]] = remainingOrders

  repeat {
    minutesLeft -= Int(timeToPrepare(drinks: remainingOrders[pinPoint]))
    remainingOrders.remove(at: pinPoint)
  } while minutesLeft > 0

  return remainingOrders
}

func orderTracker(orders: [(drink: String, time: String)]) -> (
    beer: (first: String?, last: String?, total: Int)?,
    soda: (first: String?, last: String?, total: Int)?
) {
    var trackedOrder: (
        beer: (first: String?, last: String?, total: Int)?,
        soda: (first: String?, last: String?, total: Int)?
    ) = (beer: nil, soda: nil)

    for order in orders {
        if order.drink != "beer" && order.drink != "soda" { continue }

        if order.drink == "beer" {
            if trackedOrder.beer == nil {
                trackedOrder.beer = (first: order.time, last: order.time, total: 1)
            } else {
                trackedOrder.beer?.last = order.time
                trackedOrder.beer?.total += 1
            }
        } else if order.drink == "soda" {
            if trackedOrder.soda == nil {
                trackedOrder.soda = (first: order.time, last: order.time, total: 1)
            } else {
                trackedOrder.soda?.last = order.time
                trackedOrder.soda?.total += 1
            }
        }
    }

    return trackedOrder
}
