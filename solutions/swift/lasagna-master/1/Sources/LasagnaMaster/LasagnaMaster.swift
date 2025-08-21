// function with default parameter values
func remainingMinutesInOven(elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int {
  return expectedMinutesInOven - elapsedMinutes
}

// function with variadic parameters
func preparationTimeInMinutes(layers: String...) -> Int {
  return layers.count * 2
}

// function with multiple return values
func quantities(layers: String...) -> (noodles: Int, sauce: Double) { 
  var noodle: Int = 0
  var sauce: Double = 0.0

  for ingredient in layers {
    if ingredient == "noodles" {
      noodle += 3
    } else if ingredient == "sauce" {
      sauce += 0.2
    }
  }

  return (noodle, sauce)
}

// function with inout parameter
func toOz(_ qt: inout (noodles: Int, sauce: Double)) {
  qt.sauce *= 33.814
}

// function with nested functions inside
func redWine(layers: String...) -> Bool {
  var mozzarella = 0
  var ricotta = 0
  var béchamel = 0
  var meat = 0
  var sauce = 0
  
  func layer(_ layers:[String]) {
    for layer in layers {
      switch layer {
      case "mozzarella":
        mozzarella += 1
      case "ricotta":
        ricotta += 1
      case "béchamel":
        béchamel += 1
      case "meat":
        meat += 1
      case "sauce":
        sauce += 1
      default :
        continue
      } 
    }
  }
  
  layer(layers)

  if (mozzarella + ricotta + béchamel) > (meat + sauce) {
    return false
  } else {
    return true
  }
}
