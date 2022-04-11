//
//  UITests.swift
//  UITests
//
//  Created by Sumit Verma on 23/02/22.
//

import XCTest

class Main: XCTestCase {
    var app : XCUIApplication!

    override func setUpWithError() throws {
        launchApp()
        continueAfterFailure = false
    }

    //To launch the Application
    func launchApp() {
        app = XCUIApplication()
        app.launch()
        print("APPLICATION IS LAUNCHED")
    }
    
    
    //To check and tap on Register button
    func registerBtn() {
        let registerButton = app.buttons.matching(identifier: "register").element
        XCTAssert(registerButton.waitForExistence(timeout: 5), "REGISTER BUTTON IS NOT PRESENT")
        if registerButton.exists {
            print("REGISTER BUTTON IS PRESENT")
            registerButton.tap()
            print("REGISTER BUTTON IS TAPPED")
        }
    }
    
    //To check and tap on Return key present on mobile keyboard
    func returnKey() {
        let returnButton = app.buttons.matching(identifier: "Return").element
        XCTAssert(returnButton.waitForExistence(timeout: 5), "RETURN BUTTON IS NOT PRESENT")
        if returnButton.exists {
            print("RETURN BUTTON IS PRESENT")
            returnButton.tap()
            print("RETURN KEY IS TAPPED")
        }
    }
    
    //To check and tap on Sign Up button
    func signUpBtn() {
        let signUpButton = app.buttons.matching(identifier: "sign up").element
        XCTAssert(signUpButton.waitForExistence(timeout: 5), "SIGN UP BUTTON IS NOT PRESENT")
        if signUpButton.exists {
            print("SIGN UP BUTTON IS PRESENT")
            signUpButton.tap()
            print("SIGN UP BUTTON IS TAPPED")
        }
    }
    
    //To check and tap on Sign In button
    func signInBtn() {
        let signInButton = app.buttons.matching(identifier: "sign in").element
        XCTAssert(signInButton.waitForExistence(timeout: 5), "SIGN IN BUTTON IS NOT PRESENT")
        if signInButton.exists {
            print("SIGN IN BUTTON IS PRESENT")
            signInButton.tap()
            print("SIGN IN BUTTON IS TAPPED")
        }
    }
    
    //To check and tap on Profile button
    func profileBtn() {
        let profileButton = app.buttons.matching(identifier: "profile").element
        XCTAssert(profileButton.waitForExistence(timeout: 5), "PROFILE BUTTON IS NOT PRESENT")
        if profileButton.exists {
            print("PROFILE BUTTON IS PRESENT")
            profileButton.tap()
            print("PROFILE BUTTON IS TAPPED")
        }
    }
    
    //To check and tap on Sign Out button
    func signOutBtn() {
        let signOutButton = app.buttons.matching(identifier: "sign out of account").element
        XCTAssert(signOutButton.waitForExistence(timeout: 5), "SIGN OUT BUTTON IS NOT PRESENT")
        if signOutButton.exists {
            print("SIGN OUT BUTTON IS PRESENT")
            signOutButton.tap()
            print("SIGN OUT BUTTON IS TAPPED")
        }
    }
    
    //To get back to home view
    func backBtn() {
            let backButton = app.buttons.matching(identifier: "back").element
            XCTAssert(backButton.waitForExistence(timeout: 5), "BACK BUTTON IS NOT PRESENT")
            if backButton.exists {
                print("BACK BUTTON IS PRESENT")
                backButton.tap()
                print("BACK BUTTON IS TAPPED")
            }
    }
}
