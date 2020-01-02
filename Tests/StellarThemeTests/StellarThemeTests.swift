import XCTest
@testable import StellarTheme

final class StellarThemeTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(StellarTheme().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
