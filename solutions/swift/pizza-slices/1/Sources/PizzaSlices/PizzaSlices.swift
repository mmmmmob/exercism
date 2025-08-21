import Foundation

func sliceSize(diameter: Double?, slices: Int?) -> Double? {
  let size: Double?

  // unwrap both arguments
  guard let diameter else {
    return nil
  }; 
  guard let slices else {
    return nil
  } 

  // calculate the size into Double optionals
  if diameter < 0 || slices <= 1 {
    return nil
  } else {
      size = (Double.pi * (pow(diameter / 2, 2)) / Double(slices))
      return size
  }
}

func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {
  func converter(a: String, b:String) -> (Double, Int)? {
    let convertDiameter = Double(a)
    let convertSlice = Int(b)

    guard convertDiameter != nil && convertSlice != nil else {
      return nil
    } 
      return (convertDiameter!, convertSlice!)
  }

  let convertA: (Double, Int)? = converter(a: diameterA, b: slicesA)
  let convertB: (Double, Int)? = converter(a: diameterB, b: slicesB)

  var areaA: Double? = sliceSize(diameter: convertA?.0, slices: convertA?.1)
  var areaB: Double? = sliceSize(diameter: convertB?.0, slices: convertB?.1)

  if areaA == nil { areaA = 0.0 }
  if areaB == nil { areaB = 0.0 }

  if areaA! > areaB! {
    return "Slice A is Bigger"
  } else if areaA! < areaB! {
    return "Slice B is Bigger"
  } else {
    return "Neither slice is bigger"
  }
}
