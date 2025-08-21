func timeToPrepare(drinks: [String]) -> Double {
  var time: Double = 0.0
  for drink: String in drinks {
    switch drink {
    case "water", "beer", "soda":
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

    if limes.count == 0 || needed == 0 {
        return limeCount
    }

    for lime in limes {
        switch lime {
        case "small":
            limeNeeded -= 6
        case "medium":
            limeNeeded -= 8
        case "large":
            limeNeeded -= 10
        default:
            break
        }
        limeCount += 1
        if limeNeeded <= 0 {
            break
        }
    }

    return limeCount
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
  var minutesLeft: Int = minutesLeft
  var remainingOrders: [[String]] = remainingOrders

  repeat {
    if remainingOrders.count == 0 || minutesLeft <= 1 { break }
    minutesLeft -= Int(timeToPrepare(drinks: remainingOrders[0]))
    remainingOrders.remove(at: 0)
  } while minutesLeft > 0

  return remainingOrders
}

func orderTracker(orders: [(drink: String, time: String)]) -> (
    beer: (first: String, last: String, total: Int)?,
    soda: (first: String, last: String, total: Int)?
) {
    var trackedOrder: (
        beer: (first: String, last: String, total: Int)?,
        soda: (first: String, last: String, total: Int)?
    ) = (beer: nil, soda: nil)

    for order in orders {
        if order.drink != "beer" && order.drink != "soda" { continue }

        if order.drink == "beer" {
            if trackedOrder.beer == nil {
                trackedOrder.beer = (first: order.time, last: order.time, total: 1)
            } else {
                trackedOrder.beer!.last = order.time
                trackedOrder.beer!.total += 1
            }
        } else if order.drink == "soda" {
            if trackedOrder.soda == nil {
                trackedOrder.soda = (first: order.time, last: order.time, total: 1)
            } else {
                trackedOrder.soda!.last = order.time
                trackedOrder.soda!.total += 1
            }
        }
    }

return trackedOrder
}