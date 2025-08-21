let flip: ((String, String, String)) -> (String, String, String) = { ($0.1, $0.0, $0.2) }

let rotate: ((String, String, String)) -> (String, String, String) = { ($0.1, $0.2, $0.0) }

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
