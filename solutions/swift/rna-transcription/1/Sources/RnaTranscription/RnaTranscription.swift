func toRna(_ dna: String) -> String {
    var rna = ""

    for dn in dna {
        var rn: String
        switch dn {
        case "G":
            rn = "C"
        case "C":
            rn = "G"
        case "T":
            rn = "A"
        case "A":
            rn = "U"
        default:
            rn = ""
        }
        rna.append(rn)
    }

    return rna
}