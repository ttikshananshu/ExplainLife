//
//  register.swift
//  UITests
//
//  Created by Sumit Verma on 04/03/22.
//

import Foundation
import XCTest

class Register : Main {
    
    //To Create a new account with different fields
    func signUp(fullName : String, email : String, password : String) {
        let fullNameTextField = app.textFields.matching(identifier: "full name").element
        let emailTextField = app.textFields.matching(identifier: "email").element
        let passwordTextField = app.secureTextFields.matching(identifier: "password").element
        XCTAssert(fullNameTextField.waitForExistence(timeout: 3), "FULL NAME TEXT FIELD IS NOT PRESENT")
        if fullNameTextField.exists {
            print("FULL NAME TEXT FIELD IS PRESENT")
            fullNameTextField.tap()
            fullNameTextField.typeText(fullName)
            print("FULL NAME IS ENTERED")
            returnKey()
        }
        XCTAssert(emailTextField.waitForExistence(timeout: 3), "FULL NAME TEXT FIELD IS NOT PRESENT")
        if emailTextField.exists {
            print("EMAIL TEXT FIELD IS PRESENT")
            emailTextField.tap()
            emailTextField.typeText(email)
            print("EMAIL IS ENTERED")
            returnKey()
        }
        XCTAssert(passwordTextField.waitForExistence(timeout: 3), "FULL NAME TEXT FIELD IS NOT PRESENT")
        if passwordTextField.exists {
            print("PASSWORD TEXT FIELD IS PRESENT")
            passwordTextField.tap()
            passwordTextField.typeText(password)
            print("PASSWORD IS TYPED")
            returnKey()
        }
    }
    
    //To fill the SPECIFIC test data in sign up form
    func createSpecificAccount() {
        let users = Utils2.loadData()
    if let mark = users.first(where: { user in user.email.caseInsensitiveCompare("markwood@abc.com") == .orderedSame })
        {
        signUp(fullName: mark.name, email: mark.email, password: mark.password)
        signUpBtn()
        closeWindowBtn()
        }
            else {
                print("Mark IS MISSING")
            }
     }
    
    //To fill the test data in sign up form via iterating over the test data
    func createAccount(){
        let dataSource = Utils.loadData(filename: "example")
        for iteration in dataSource {
            guard let user = iteration as? [String : Any] else {return}
            let fullname = user["name"] as! String
            let email = user["email"] as! String
            let password = user["password"] as! String
            signUp(fullName: fullname, email: email, password: password)
            signUpBtn()
            closeWindowBtn()
            _ = XCTWaiter.wait(for: [expectation(description: "WAIT FOR 2 SECONDS")], timeout: 1)
        }
    }
    
    //To check and Tap on Close Window button
    func closeWindowBtn() {
        let closeWindowButton = app.buttons.matching(identifier: "close window").element
        if closeWindowButton.exists {
            print("CLOSE WINDOW BUTTON IS PRESENT")
            closeWindowButton.tap()
            print("CLOSE WINDOW BUTTON IS TAPPED")
        }
    }
}
