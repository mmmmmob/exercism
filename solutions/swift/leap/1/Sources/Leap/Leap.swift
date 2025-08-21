class Year {
  var year: Int

  init(calendarYear: Int) {
    self.year = calendarYear
  }

  var isLeapYear: Bool {
    var answer: Bool

    if self.year % 100 == 0 {
      switch self.year % 400 {
      case 0:
        answer = true
        break
      default:
        answer = false
        break
      }
    } else {
      if self.year % 4 == 0 {
        answer = true
      } else { answer = false }
    } 

    return answer
  }
}