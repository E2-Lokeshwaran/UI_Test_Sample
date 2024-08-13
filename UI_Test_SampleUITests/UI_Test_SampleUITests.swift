//
//  UI_Test_SampleUITests.swift
//  UI_Test_SampleUITests
//
//  Created by Lokeshwaran on 13/08/24.
//

import XCTest

final class UI_Test_SampleUITests: XCTestCase 
{
    
    override func setUpWithError() throws
    {
        continueAfterFailure = false
    }

  
    func testExample() throws
    {
        //pass case
        
        let app = XCUIApplication()
        app.launch()
        
        //username
        let userNameField = app.textFields["Enter user name"]
        XCTAssertTrue(userNameField.exists)
        userNameField.tap()
        userNameField.typeText("123")
        
        //password
        let passTextField = app.textFields["Enter password"]
        XCTAssertTrue(passTextField.exists)
        passTextField.tap()
        passTextField.typeText("123")
        
        //button tap
        let button = app.buttons["Login"]
        XCTAssertTrue(button.exists)
        button.tap()
        
        //check fot lbl
        let accountLbl = app.staticTexts["Welcome"]
        XCTAssertTrue(accountLbl.exists)
        
        
        //check for navigation
        let navi = app.navigationBars["UI_Test_Sample.NextView"].buttons["Back"]
        XCTAssertTrue(navi.exists)
        
        app.textFields["Enter user name"].tap()
        app.textFields["Enter password"].tap()
        navi.tap()
    }
    
    func testFail()
    {
        //fail case
        
        let app = XCUIApplication()
        app.launch()
        
        //username
        let userNameField = app.textFields["Enter user name"]
        XCTAssertTrue(userNameField.exists)
        userNameField.tap()
        userNameField.typeText("1234")
        
        //password
        let passTextField = app.textFields["Enter password"]
        XCTAssertTrue(passTextField.exists)
        passTextField.tap()
        passTextField.typeText("123")
        
        //button tap
        let button = app.buttons["Login"]
        XCTAssertTrue(button.exists)
        button.tap()
        
        
        //alert lbl
        let alertLbl = app.staticTexts["Invalid login"]
        XCTAssertTrue(alertLbl.exists)
        
    }

}



