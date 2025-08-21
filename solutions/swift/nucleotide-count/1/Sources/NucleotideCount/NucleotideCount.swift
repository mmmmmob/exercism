enum NucleotideCountErrors: Error {
  case invalidNucleotide
}

class DNA {

  var strand: String
  static let validNucleotide: Set<Character> = ["A","T","G","C"]

  init(strand: String) throws {
    if !strand.allSatisfy({DNA.validNucleotide.contains($0)}) {
      throw NucleotideCountErrors.invalidNucleotide
    }

    self.strand = strand
  }

  func counts() -> [String : Int] {
    let strand = self.strand

    var result: Dictionary<String, Int> = ["A": 0, "C": 0, "G": 0, "T": 0]

    for nucleotide in strand {
      result[String(nucleotide)]! += 1
    }

    return result
  }
}