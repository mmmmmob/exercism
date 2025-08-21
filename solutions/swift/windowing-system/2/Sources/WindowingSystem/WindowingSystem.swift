struct Size {
  var width: Int = 80
  var height: Int = 60

  mutating func resize(newWidth: Int, newHeight: Int) {
    self.width = newWidth
    self.height = newHeight
  }
}

struct Position {
  var x: Int = 0
  var y: Int = 0

  mutating func moveTo(newX: Int, newY: Int) {
    self.x = newX
    self.y = newY
  }
}

class Window {
  var title: String = "New Window"
  let screenSize: Size = Size(width: 800, height: 600)
  var size: Size = Size()
  var position: Position = Position()
  var contents: String? = nil

func resize(to size: Size) {
  self.size.width = min(max(1, size.width), screenSize.width - position.x)
  self.size.height = min(max(1, size.height), screenSize.height - position.y)
}

func move(to position: Position) {
  self.position.x = min(max(0, position.x), screenSize.width - size.width)
  self.position.y = min(max(0, position.y), screenSize.height - size.height)
}
  
  func update(title: String) {
    self.title = title
  }

  func update(text: String?) {
    self.contents = text
  }

  func display() -> String {
    return "\(self.title)\nPosition: (\(self.position.x), \(self.position.y)), Size: (\(self.size.width) x \(self.size.height))\n\(self.contents ?? "[This window intentionally left blank]")\n"
  }
}

/* 
?? 👇🏼 This method of declaring a constant in Swift is called "immediately-invoked closure expression" or "IIFE" (Immediately Invoked Function Expression).

?? In this method, you're defining a closure { ... } and immediately invoking it with (). This allows you to perform some setup or initialization logic and then immediately assign the result to mainWindow. 👇🏼
*/

let mainWindow: Window = {
  let window = Window()
  window.title = "Main Window"
  window.contents = "This is the main window"
  window.size.width = 400
  window.size.height = 300
  window.position.x = 100
  window.position.y = 100
  return window
}()