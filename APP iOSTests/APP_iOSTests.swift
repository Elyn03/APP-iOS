//
//  APP_iOSTests.swift
//  APP iOSTests
//
//  Created by EAP Céline Chhun Huy on 16/10/2024.
//

import XCTest
@testable import APP_iOS

final class APP_iOSTests: XCTestCase {

    let viewModel = ViewModel()
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    // Given -> When -> Then
    
    func testGiven_loginWithPassword() {
        let username = "Julie"
        let password = "5678"
        let passwordInvalid = "1234"
        
        XCTAssertTrue(viewModel.isValid != true)

        viewModel.checkConnection(login: username, password: passwordInvalid)
        XCTAssertTrue(viewModel.isValid == false)
        
        viewModel.checkConnection(login: username, password: password)
        XCTAssertTrue(viewModel.isValid == true)

    }

}
