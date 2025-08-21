import Foundation

class Bob {
  static func response(_ message: String) -> String {

    let truncateAllSpace: String = message.filter{!$0.isWhitespace}
    let truncateSymbol: String = truncateAllSpace.filter{!$0.isPunctuation}.filter{!$0.isSymbol}.filter{!$0.isNumber}

    var isUppercase: Bool = false
    var uppercased: [Character] = []

    for char in truncateSymbol {
      if char.isUppercase {
        uppercased.append(char)
    }
    }

    if uppercased.count == truncateSymbol.count {
      isUppercase = true
    }
    

    if truncateAllSpace.count == 0 { return "Fine. Be that way!"}
    else if isUppercase && uppercased.count != 0 && truncateAllSpace.last == "?" { return "Calm down, I know what I'm doing!" }
    else if truncateAllSpace.last == "?" { return "Sure."} 
    else if isUppercase && uppercased.count != 0 { return "Whoa, chill out!" }
    else { return "Whatever." }
  }
}
