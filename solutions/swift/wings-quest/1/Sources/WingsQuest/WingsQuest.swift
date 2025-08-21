func bonusPoints(powerUpActive: Bool, touchingEagle: Bool) -> Bool {
    if powerUpActive && touchingEagle {
        return true
    } else {
           return false
    }
  fatalError("Please implement the bonusPoints(powerUpActive:touchingEagle:) function")
}

func score(touchingPowerUp: Bool, touchingSeed: Bool) -> Bool {
    if touchingPowerUp || touchingSeed {
        return true
    } else {
           return false
    }
  fatalError("Please implement the score(touchingPowerUp:touchingSeed:) function")
}

func lose(powerUpActive: Bool, touchingEagle: Bool) -> Bool {
    if touchingEagle && !powerUpActive {
                                        return true
    } else {
           return false
    }
  fatalError("Please implement the lose(powerUpActive:touchingEagle:) function")
}

func win(hasPickedUpAllSeeds: Bool, powerUpActive: Bool, touchingEagle: Bool) -> Bool {
    if hasPickedUpAllSeeds && !lose(powerUpActive: powerUpActive, touchingEagle: touchingEagle) {
        return true
    } else {
           return false
    }
  fatalError("Please implement the win(hasPickedUpAllSeeds:powerUpActive:touchingEagle:) function")
}
