//
//  __IntroductionTests.swift
//  1-IntroductionTests
//
//  Created by Mac on 20.02.2023.
//

import XCTest
@testable import UnitTestIntroduction

class __IntroductionTests: XCTestCase {
    
    var fieldValidator: FieldValidator!
    
    override func setUpWithError() throws {
        fieldValidator = FieldValidatorImpl()
    }
    
    override func tearDownWithError() throws {
        fieldValidator = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testValidatorCorrectWithEmptyValues() throws {
        
        //Given
        let loginTF = UITextField()
        let passwordTF = UITextField()
        var validateResult: Bool
        let expectedResult = false
        
        //When
        validateResult = fieldValidator.validateLoginTextField(loginTF: loginTF, passwordTF: passwordTF)
        
        //Then
        XCTAssertEqual(expectedResult, validateResult)
        
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
