//
//  UITestSampleUITests.swift
//  UITestSampleUITests
//
//  Created by Salunke, Swapnil Uday (US - Mumbai) on 30/03/20.
//  Copyright © 2020 Swapnil Salunke. All rights reserved.
//

import XCTest

class UITestSampleUITests: XCTestCase {
    var app: XCUIApplication!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        app = XCUIApplication()
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testLaunchScreen() {
        // UI tests must launch the application that they test.
        
        app.launch()
        // Make sure we're displaying onboarding
        XCTAssertTrue(app.isDisplayingLaunchScreen)
    }
    
    func testFirstOnboardingScreen() {
        // UI tests must launch the application that they test.
        
        app.launch()
        // Make sure we're displaying onboarding
        XCTAssertTrue(app.isDisplayingLaunchScreen)
        
        let app = XCUIApplication()
        
        app/*@START_MENU_TOKEN@*/.buttons["Launch Onboarding"]/*[[".otherElements[\"launchScreenView\"].buttons[\"Launch Onboarding\"]",".buttons[\"Launch Onboarding\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let textview = app.otherElements["firstOnboarding"].children(matching: .textView).element
        
        print(textview.accessibilityLabel)
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

//    func testLaunchPerformance() {
//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
//            // This measures how long it takes to launch your application.
//            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
//                XCUIApplication().launch()
//            }
//        }
//    }
}
extension XCUIApplication {
    var isDisplayingLaunchScreen: Bool {
        return otherElements["launchScreenView"].exists
    }
}
