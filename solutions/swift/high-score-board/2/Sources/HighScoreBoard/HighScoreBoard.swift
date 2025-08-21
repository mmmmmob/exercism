// define a new high score dictionary
func newScoreBoard() -> [String: Int] {
  return [String: Int]()
}

// add players to the high score dictionary
func addPlayer(_ scores: inout [String: Int], _ name: String, _ score: Int = 0) {
  scores[name] = score
}

// remove players from the score dictionary
func removePlayer(_ scores: inout [String: Int], _ name: String) {
  scores[name] = nil
}

// reset a player's score
func resetScore(_ scores: inout [String: Int], _ name: String) {
  scores[name]? = 0
}

// update a player's score
func updateScore(_ scores: inout [String: Int], _ name: String, _ delta: Int) {
  scores[name]? += delta
}

// get a list of players with scores ordered by player name
func orderByPlayers(_ scores: [String: Int]) -> [(String, Int)] {
  var tupleArray: [(String, Int)] = []
  for (name, score) in scores {
    let newTuples = (name, score)
      tupleArray.append(newTuples)
  }

  let finalReordered = tupleArray.sorted(by: {$0.0 < $1.0})

  return finalReordered
}

// get a list of players ordered by player score in decreasing order
func orderByScores(_ scores: [String: Int]) -> [(String, Int)] {
  var tupleArray: [(String, Int)] = []
  for (name, score) in scores {
    let newTuples = (name, score)
      tupleArray.append(newTuples)
  }

  let finalReordered = tupleArray.sorted(by: {$0.1 > $1.1})

  return finalReordered
}
