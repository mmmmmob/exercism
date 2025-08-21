import Foundation

// split a string into individual lines
func splitOnNewlines(_ poem: String) -> [String] {
  let split = poem.components(separatedBy: "\n")
  return split
}

// get the first letter of sentence
func firstLetter(_ line: String) -> Character {
  let firstLetter = line.first
  return firstLetter ?? "_"
}

// capitalize a word
func capitalize(_ phrase: String) -> String {
    let split = phrase.components(separatedBy: " ")
  var phraseCaps = ""
  
  for word in split {
    phraseCaps += (word.first?.uppercased())! + word.dropFirst().lowercased() + " "
  }
  return String(phraseCaps.dropLast())
}

// trim a sentence
func trimSentence(_ line: String) -> String {
  let split = line.components(separatedBy: " ")
  var dropSpace = ""
  for word in split {
    if word == "" || word == "\t" {
      continue
    }
    dropSpace += word + " "
  }
  return String(dropSpace.dropLast())
}

// get the last letter of a sentence
func lastLetter(_ line: String) -> Character {
  let lastLetter = line.last
  return lastLetter ?? "_"
}

// be polite with ', please' insertion after a word
func backDoorPassword(_ phrase: String) -> String {
  return capitalize(phrase) + ", please"
}

// get the i letter of a  sentence
func ithLetter(_ line: String, i: Int) -> Character { 
  if i > line.count {
    return " "
  } else {
    let index = line.index(line.startIndex, offsetBy: i)
    return line[index]
  }
}

// shout the answer with capital letters
func secretRoomPassword(_ phrase: String) -> String {
  return phrase.uppercased() + "!"
}
