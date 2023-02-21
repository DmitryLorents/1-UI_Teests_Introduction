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
    
    func testExample2() throws {
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
        
        
//        let app = app2
//        app/*@START_MENU_TOKEN@*/.textFields["loginTF"]/*[[".textFields[\"Login\"]",".textFields[\"loginTF\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//
//        let app2 = app
//        app2/*@START_MENU_TOKEN@*/.buttons["Next:"]/*[[".keyboards",".buttons[\"next\"]",".buttons[\"Next:\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
//        app/*@START_MENU_TOKEN@*/.textFields["passwordTF"]/*[[".textFields[\"Password\"]",".textFields[\"passwordTF\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
//        app2/*@START_MENU_TOKEN@*/.buttons["Done"]/*[[".keyboards",".buttons[\"done\"]",".buttons[\"Done\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
//        app.alerts["Warning"].scrollViews.otherElements.buttons["OK"].tap()
//
        //app.textFields["passwordTF"].tap()
        

        // Use XCTAssert and related functions to verify your tests produce the correct results.
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
