enum LogLevel {
  // create enum case (one-line)
  case trace, debug, info, warning, error, fatal, unknown

  // create init method to mutate self
  init(_ log: String) {
    let code = log.prefix(5)
    switch code {
      case "[TRC]":
        self = .trace
        case "[DBG]":
        self = .debug
        case "[INF]":
        self = .info
        case "[WRN]":
        self = .warning
        case "[ERR]":
        self = .error
      case "[FTL]":
        self = .fatal
      default:
        self = .unknown
    }
  }

  // create method return string depends on self
  func shortFormat(message: String) -> String {
    let code: String

    switch self {
    case .trace:
      code = "0"
    case .debug:
      code = "1"
    case .info:
      code = "4"
    case .warning:
      code = "5"
    case .error:
      code = "6"
    case .fatal:
      code = "7"
    default:
      code = "42"
    }

    return code + ":\(message)"
  }
}