//
//  UnitTestIntroductionUITests.swift
//  UnitTestIntroductionUITests
//
//  Created by Mac on 21.02.2023.
//

import XCTest

class UnitTestIntroductionUITests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        app.textFields["loginTF"].tap()
        app.textFields["loginTF"].typeText("User loggin")
        app.buttons["Next:"].tap()
        app.textFields["passwordTF"].typeText("1234")
        app.buttons["Done"].tap()
        
        XCTAssert(app.alerts["Warning"].exists)
        XCTAssert(app.alerts["Warning"].waitForExistence(timeout: 1.0))
        XCTAssert(app.alerts["Warning"].descendants(matching: .staticText)["Invalid fields"].waitForExistence(timeout: 1.0))
        
    }
    
    func testNextScreenExistsAfterLogin() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        app.textFields["loginTF"].tap()
        app.textFields["loginTF"].typeText("User loggin")
        app.buttons["Next:"].tap()
        app.textFields["passwordTF"].typeText("123")
        app.buttons["Done"].tap()
        XCTAssert(app.navigationBars["Main"].waitForExistence(timeout: 1.0))
        
    }
    
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
