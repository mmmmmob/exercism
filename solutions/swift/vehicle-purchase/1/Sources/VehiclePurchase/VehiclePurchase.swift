func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
  let tenPercent: Double = monthlyBudget * 0.1
  var caution: String = ""

  if price <= monthlyBudget {
    caution = "Yes! I'm getting a \(vehicle)"
  } else if price == monthlyBudget + tenPercent {
   caution = "I'll have to be frugal if I want a \(vehicle)"
  } else if price > monthlyBudget + tenPercent {
    caution = "Darn! No \(vehicle) for me"
  }

  return caution
}

func licenseType(numberOfWheels wheels: Int) -> String {
  switch wheels {
  case 2, 3:
    return "You will need a motorcycle license for your vehicle"
  case 4, 6:
    return "You will need an automobile license for your vehicle"
  case 18:
    return "You will need a commercial trucking license for your vehicle"
  default:
    return "We do not issue licenses for those types of vehicles"
  }
}

func calculateResellPrice(originalPrice: Int, yearsOld: Int) -> Int {
  var resellPrice: Int = 0

  if yearsOld < 3 {
    resellPrice = originalPrice - (originalPrice * 80 / 100)
  } else if yearsOld >= 10 {
    resellPrice = originalPrice / 2
  } else if yearsOld < 10 && yearsOld >= 3{
    resellPrice = originalPrice - (originalPrice * 70 / 100)
  } 
  return resellPrice
}
