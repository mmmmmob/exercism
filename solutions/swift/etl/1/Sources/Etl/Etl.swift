class ETL {
  static func transform(_ old: [String: [String]]) -> [String: Int] {
    var result: [String: Int] = [:]
    
    for (score, alphabet) in old {
      let newScore = Int(score)
      for each in alphabet {
        let newAlphabet = each.lowercased()
        result.updateValue(newScore!, forKey: newAlphabet)
      }
    }

    return result
  }
}