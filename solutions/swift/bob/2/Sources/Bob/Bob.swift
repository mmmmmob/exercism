import Foundation

class Bob {
  static func response(_ message: String) -> String {
    // filter out whitespaces and symbols for next steps
    let truncateAllSpace: String = message.filter{!$0.isWhitespace}
    let truncateSymbol: String = truncateAllSpace.filter{!$0.isPunctuation}.filter{!$0.isSymbol}.filter{!$0.isNumber}

    // check if all character is uppercase or not with filter method
    let checkUppercased: String = truncateSymbol.filter{$0.isUppercase}
    var isUppercase: Bool = false

    if checkUppercased == truncateSymbol {
      isUppercase = true
    }

    // return string by each case
    if truncateAllSpace.count == 0 { return "Fine. Be that way!"}
    else if isUppercase && checkUppercased.count != 0 && truncateAllSpace.last == "?" { return "Calm down, I know what I'm doing!" }
    else if truncateAllSpace.last == "?" { return "Sure."} 
    else if isUppercase && checkUppercased.count != 0 { return "Whoa, chill out!" }
    else { return "Whatever." }
  }
}