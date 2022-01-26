import XCTest
@testable import WeakLinkTest

final class WeakLinkTestTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        #if targetEnvironment(simulator)
        XCTAssertFalse(WeakLinkTest().doTest().isEmpty)
        #else
        XCTAssertEqual(WeakLinkTest().doTest(), [])
        #endif
    }
}
