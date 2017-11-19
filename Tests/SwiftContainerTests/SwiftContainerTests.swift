import XCTest
@testable import SwiftContainer

class SwiftContainerTests: XCTestCase {
    func testSingleton() {
      let s = SwiftContainer.getInstance();
      XCTAssertNotNil(s);
      print(s);
    }

    func testAddObjectString() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let s = SwiftContainer.getInstance();
        let o = "hello world";
        s.addObject(id: "test", object: o as AnyObject);
        let o1 = s.getObject(id: "test") as! String;

        print ("o: \(o) vs o1: \(o1)");
        XCTAssertEqual(o, o1);
    }

    func testAddObjectInt() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let s = SwiftContainer.getInstance();
        let o = Int(123);
        s.addObject(id: "test", object: o as AnyObject);
        let o1 = s.getObject(id: "test") as! Int;

        print ("o: \(o) vs o1: \(o1)");
        XCTAssertEqual(o, o1);
    }

    func testGetObjectNothing() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let s = SwiftContainer.getInstance();
        let o1 = s.getObject(id: "test") as? Int;

        XCTAssertNil(o1);
    }

    static var allTests = [
        ("testSingleton", testSingleton),
        ("testAddObjectString", testAddObjectString),
        ("testAddObjectInt", testAddObjectInt),
        ("testGetObjectNothing", testGetObjectNothing)
    ]
}
