let flip = {(a: String, b: String, c: String) -> (String, String, String) in 
  return (b, a, c)
}

let rotate = {(a: String, b: String, c: String) -> (String, String, String) in 
  return (b, c, a)
}

func makeShuffle(
  flipper: @escaping ((String, String, String)) -> (String, String, String),
  rotator: @escaping ((String, String, String)) -> (String, String, String)
) -> (UInt8, (String, String, String)) -> (String, String, String) {
    return { (ID, wires) in
        var wires = wires // Make mutable copy of wires
        for i in 0..<8 { // Iterate over each bit
            let bit = (ID >> i) & 1 // Extract the bit at position i
            let newWires = bit == 0 ? flipper(wires) : rotator(wires) // Apply flipper or rotator
            wires = newWires // Update wires
        }
        return wires // Return final wires
    }
}
