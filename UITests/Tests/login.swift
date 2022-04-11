//
//  login.swift
//  UITests
//
//  Created by Sumit Verma on 04/03/22.
//

import Foundation
import XCTest

class Login: Register {
    
    //To enter Login Details
    func login(email : String, password: String) {
        let emailTextField = app.textFields.matching(identifier: "email").element
        let passwordTextField = app.secureTextFields.matching(identifier: "password").element
        XCTAssert(emailTextField.waitForExistence(timeout: 3), "EMAIL TEXT FIELD IS NOT PRESENT")
        if emailTextField.exists {
            print("EMAIL TEXT FIELD IS PRESENT")
            emailTextField.tap()
            emailTextField.typeText(email)
            print("EMAIL IS ENTERED")
            returnKey()
        }
        XCTAssert(passwordTextField.waitForExistence(timeout: 3), "PASSWORD TEXT FIELD IS NOT PRESENT")
        if passwordTextField.exists {
            print("PASSWORD TEXT FIELD IS PRESENT")
            passwordTextField.tap()
            passwordTextField.typeText(password)
            print("PASSWORD IS ENTERED")
            returnKey()
        }
    }
    
    //To fill specific test data into login form
    func loginSpecificAccount(){
        let users = Utils2.loadData()
        if let mark = users.first(where: {user in user.email.caseInsensitiveCompare("markwood@abc.com") == .orderedSame})
        {
            login(email: mark.email, password: mark.password)
            signInBtn()
            closeWindowBtn()
        }
        else {
            print("MARK RECORD IS MISSING")
        }
    }
    
    //To fill test data into Login for via iteration
   /* func testloginAccountNEW(){
        let dataSource = Utils2.loadData()
        for iteration in dataSource {
            guard let user = iteration as? [String] else {return}
            let email = user["email"] as! String
            let password = user["password"] as! String
            login(email: , password: password)
            signInBtn()
            profileBtn()
            signOutBtn()
            //break
            //_ = XCTWaiter.wait(for: [expectation(description: "WAIT FOR 2 SECONDS")], timeout: 3)
        }
    }*/
    
    
    
    //To fill test data into Login for via iteration
    func loginAccount(){
        let dataSource = Utils.loadData(filename: "example")
        for iteration in dataSource {
            guard let user = iteration as? [String : Any] else {return}
            let email = user["email"] as! String
            let password = user["password"] as! String
            login(email: email, password: password)
            signInBtn()
            profileBtn()
            signOutBtn()
            //break
            //_ = XCTWaiter.wait(for: [expectation(description: "WAIT FOR 2 SECONDS")], timeout: 3)
        }
    }
}
