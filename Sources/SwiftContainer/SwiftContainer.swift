import Foundation;

class SwiftContainer {
  private var objectsById = [String: AnyObject]();

  private static let instance : SwiftContainer = SwiftContainer();

  private init() {}

  static func getInstance() -> SwiftContainer {
    return instance;
  }

  func getObject(id: String) -> AnyObject? {
    return objectsById[id];
  }

  func addObject(id: String, object: AnyObject) {
    self.objectsById[id] = object;
  }

}
