func getCard(at index: Int, from stack: [Int]) -> Int {
  return stack[index]
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
  var newStack: [Int] = stack
  guard index >= 0 && newStack.count - 1 > index else {
    return stack
  }
  newStack[index] = newCard
  return newStack
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
  var newStack: [Int] = stack
  newStack.append(newCard)
  return newStack
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
  var newStack: [Int] = stack

  guard index >= 0 && newStack.count - 1 > index else {
    return stack
  }
  newStack.remove(at: index)
  return newStack
}

func removeTopCard(_ stack: [Int]) -> [Int] {
  var newStack: [Int] = stack
  guard newStack.count > 0 else {
    return stack
  }
  newStack.removeLast()
  return newStack
}

func insert(_ newCard: Int, atBottomOf stack: [Int]) -> [Int] {
  var newStack: [Int] = stack
  newStack.insert(newCard, at: 0)
  return newStack
}

func removeBottomCard(_ stack: [Int]) -> [Int] {
  var newStack: [Int] = stack
  guard newStack.count > 0 else {
    return stack
  }
  newStack.remove(at: 0)
  return newStack
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
  let stackSize: Int = stack.count
  if stackSize != size {
    return false
  } else {
    return true
  }
}

func evenCardCount(_ stack: [Int]) -> Int {
  var evenCard: Int = 0
  for card in stack {
    if card % 2 == 0 {
      evenCard += 1
    }
  }
  return evenCard
}
