let birthday: String = "Birthday"
let valentine: String = "Valentine's Day"
let anniversary: String = "Anniversary"
let space: Character = " "
let exclamation: Character = "!"

func buildSign(for occasion: String, name: String) -> String {
  let uppercased = occasion.first?.uppercased()
  let remaining = occasion.dropFirst()
  return "Happy \(uppercased! + remaining) \(name)!"
}

func graduationFor(name: String, year: Int) -> String {
  return "Congratulations \(name)!\nClass of \(String(year))"
}

func costOf(sign: String) -> Int {
  let charCount = sign.count
  let cost = 20 + ((charCount - 10) * 2)
  return cost
}