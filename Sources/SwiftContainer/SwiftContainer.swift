import Foundation;

public class SwiftContainer {
  private var objectsById = [String: AnyObject]();

  private static let instance : SwiftContainer = SwiftContainer();

  private init() {}

  public static func getInstance() -> SwiftContainer {
    return instance;
  }

  public func getObject(id: String) -> AnyObject? {
    return objectsById[id];
  }

  public func addObject(id: String, object: AnyObject) {
    self.objectsById[id] = object;
  }

}
