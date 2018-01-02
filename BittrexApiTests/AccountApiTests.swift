//
//  AccountApiTests.swift
//  BittrexApiTests
//
//  Created by Saeid Basirnia on 1/1/18.
//  Copyright © 2018 Saeid Basirnia. All rights reserved.
//

import XCTest
import BittrexApiKit

class AccountApiTests: XCTestCase {
    
    var bittrex: Bittrex!
    
    override func setUp() {
        super.setUp()
        
        /// Account services need `auth`
        /// Make sure to enter right apikey and secretkey for passing tests
        /// Also Api Key should have proper privilages to the target services
        bittrex = Bittrex(apikey: "123456789", secretkey: "123456789")
    }
    
    override func tearDown() {
        super.tearDown()
        
        bittrex = nil
    }
    
    func testGetBalances(){
        let expectation: XCTestExpectation = self.expectation(description: "get currencies request")
        bittrex.getBalances() { (result) in
            switch result{
            case .success(let data):
                XCTAssertNotNil(data as! GetBalancesResponse , "GetBalancesResponse is not parsed")
            case .failed(let error):
                XCTAssertTrue(error.isEmpty, "getBalances not sending data")
            }
            expectation.fulfill()
        }
        self.waitForExpectations(timeout: 10.0, handler: { err in
            print(err?.localizedDescription)
        })
    }

    func testGetBalance(){
        let expectation: XCTestExpectation = self.expectation(description: "get currencies request")
        bittrex.getBalance(currency: "VTC") { (result) in
            switch result{
            case .success(let data):
                XCTAssertNotNil(data as! GetBalanceResponse , "GetBalanceResponse is not parsed")
            case .failed(let error):
                XCTAssertTrue(error.isEmpty, "getBalance not sending data")
            }
            expectation.fulfill()
        }
        self.waitForExpectations(timeout: 10.0, handler: { err in
            print(err?.localizedDescription)
        })
    }

    func testGetDepositAddress(){
        let expectation: XCTestExpectation = self.expectation(description: "get currencies request")
        bittrex.getDepositAddress(currency: "VTC") { (result) in
            switch result{
            case .success(let data):
                XCTAssertNotNil(data as! GetDepositAddressResponse , "GetDepositAddressResponse is not parsed")
            case .failed(let error):
                XCTAssertTrue(error.isEmpty, "getDepositAddress not sending data")
            }
            expectation.fulfill()
        }
        self.waitForExpectations(timeout: 10.0, handler: { err in
            print(err?.localizedDescription)
        })
    }

    func testGetOrderHistory(){
        let expectation: XCTestExpectation = self.expectation(description: "get currencies request")
        bittrex.getOrderHistory(market: "BTC-LTC") { (result) in
            switch result{
            case .success(let data):
                XCTAssertNotNil(data as! GetOrderHistoryResponse , "GetOrderHistoryResponse is not parsed")
            case .failed(let error):
                XCTAssertTrue(error.isEmpty, "getOrderHistory not sending data")
            }
            expectation.fulfill()
        }
        self.waitForExpectations(timeout: 10.0, handler: { err in
            print(err?.localizedDescription)
        })
    }

    func testGetWithdrawalHistory(){
        let expectation: XCTestExpectation = self.expectation(description: "get currencies request")
        bittrex.getWithdrawalHistory(currency: "LTC") { (result) in
            switch result{
            case .success(let data):
                XCTAssertNotNil(data as! GetWithdrawDepositHistoryResponse , "GetWithdrawDepositHistoryResponse is not parsed")
            case .failed(let error):
                XCTAssertTrue(error.isEmpty, "testGetWithdrawalHistory not sending data")
            }
            expectation.fulfill()
        }
        self.waitForExpectations(timeout: 10.0, handler: { err in
            print(err?.localizedDescription)
        })
    }
    
    func testGetDepositHistory(){
        let expectation: XCTestExpectation = self.expectation(description: "get currencies request")
        bittrex.getWithdrawalHistory(currency: "LTC") { (result) in
            switch result{
            case .success(let data):
                XCTAssertNotNil(data as! GetWithdrawDepositHistoryResponse , "GetWithdrawDepositHistoryResponse is not parsed")
            case .failed(let error):
                XCTAssertTrue(error.isEmpty, "testGetDepositHistory not sending data")
            }
            expectation.fulfill()
        }
        self.waitForExpectations(timeout: 10.0, handler: { err in
            print(err?.localizedDescription)
        })
    }

    
}
