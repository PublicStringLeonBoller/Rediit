import Foundation
import XCTest
import EyesXCUI

class TAUUITestBase: XCTestCase {
    
    var app = XCUIApplication()
    
    var eyes = Eyes()
    
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
        eyes.apiKey = "xSzTeu4tjvBva9glqBtIPylle8mFckV699sTeC46bRCc110"
       
    }
    
    override func tearDown() {
        super.tearDown()
        app.terminate()
        
        do {
            try eyes.close()
        } catch {
            eyes.abortIfNotClosed()
        }
     
    }
}
