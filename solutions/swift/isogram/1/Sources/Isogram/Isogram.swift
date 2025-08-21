import Foundation

func isIsogram(_ string: String) -> Bool {
  var result: Bool = true

    if string.count == 0 {
        return result
    } else {
        for i in 0...string.count - 1 {
    var string = string.lowercased()
    let index = string.index(string.startIndex, offsetBy: i)
    if string[index] == " " || string[index] == "-" { continue }
    let checkString = string.remove(at: index)
    if string.contains(checkString) {
      result = false
    }
  }
    }
  
  

  return result
}