import Foundation
import XCTest
import EyesXCUI

class TAUEyesTests: TAUUITestBase {
    
    func testTAUWithEyesXCUI() {

        // Start the test.
        eyes.open(withApplicationName: "TAU", testName: "Live Demo of Eyes XCUI SDK")

        // Visual checkpoint #1.
        eyes.check(withTag: "TAU", andSettings: Target.window().timeout(inSeconds: 5))

        // Click the "Click me!" button.
        XCUIApplication().buttons["enrollButton"].tap()

        // Visual checkpoint #2.
        eyes.checkWindow(withTag: "Pleas Enter City")
    }
}
