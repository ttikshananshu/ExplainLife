//
//  runtests.swift
//  UITests
//
//  Created by Sumit Verma on 04/03/22.
//

import Foundation
import XCTest

class RunTests: Login {
    
    //To test the Sign Up & Login In feature via Data Driven Testing
    func testSignUP() {
        registerBtn()
        createAccount()
        backBtn()
        loginAccount()
    }
}
