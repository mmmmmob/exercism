class GradeSchool {
  var allStudents: [String: Int] = [:]

  func roster() -> [String] {
    var result: [String] = []
    var sortedStudentByGrade = allStudents.sorted(by: {$0.value < $1.value})
    let maxGrade = sortedStudentByGrade.last?.value

    guard let maxGrade else { return result }
    for i in 1...maxGrade {
      let sortedStudentByGradeAndName = sortedStudentByGrade.filter({$0.value == i}).sorted(by: {$0.key < $1.key})
      for student in sortedStudentByGradeAndName {
        result.append(student.key)
      }
    }

    return result
  }

  func addStudent(_ name: String, grade: Int) -> Bool {
    if allStudents.contains(where: {$0.key == name}) {
      return false
    } else {
      allStudents.updateValue(grade, forKey: name)
      return true
    }
  }

  func studentsInGrade(_ grade: Int) -> [String] {
    let grader: [String : Int] = allStudents.filter({$0.value == grade})

    var result: [String] = []
    for student: (key: String, value: Int) in grader {
      result.append(student.key)
    }
    return result.sorted()
  }
}