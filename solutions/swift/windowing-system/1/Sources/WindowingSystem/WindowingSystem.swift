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

  init(title: String, width: Int, height: Int, x: Int, y: Int, contents: String?) {
    self.title = title
    self.size.width = width
    self.size.height = height
    self.position.x = x
    self.position.y = y
    self.contents = contents
  }

  func resize(to: Size) {
    if to.height < 1 {
      self.size.height = 1
    } else if to.height <= self.position.y {
      self.size.height = to.height
    }

    if to.width < 1 {
      self.size.width = 1
    } else if to.width <= self.position.x {
      self.size.width = to.width
    }
  }

  func move(to: Position) {
    if to.y < 0 {
      self.position.y = 0
    } else if to.y <= self.screenSize.height {
      self.position.y = to.y
    } else if to.y > self.screenSize.height {
      self.position.y = self.screenSize.height - to.y
    }

    if to.x < 0 {
      self.position.x = 0
    } else if to.x <= self.screenSize.width {
      self.position.x = to.x
    } else if to.x > self.screenSize.width {
      self.position.x = self.screenSize.width - to.x
    }
  }
  
  func update(title: String) {
    self.title = title
  }

  func update(text: String?) {
    self.contents = text
  }

  func display() -> String {
    guard self.contents != nil else { return "[This window intentionally left blank]" }
    return "\(self.title)\nPosition: (\(self.position.x), \(self.position.y)), Size: (\(self.size.width) x \(self.size.height)\n\(self.contents!)\n)"
  }

}

let mainWindow: Window = Window(title: "Main Window", width: 400, height: 300, x: 100, y: 100, contents: "This is the main window")