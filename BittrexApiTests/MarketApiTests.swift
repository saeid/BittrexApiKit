//
//  MarketApiTests.swift
//  BittrexApiTests
//
//  Created by Saeid Basirnia on 1/1/18.
//  Copyright © 2018 Saeid Basirnia. All rights reserved.
//

import XCTest
import BittrexApiKit

class MarketApiTests: XCTestCase {
    
    var bittrex: Bittrex!
    
    override func setUp() {
        super.setUp()

        /// Market services need `auth`
        /// Make sure to enter right apikey and secretkey for passing tests
        /// Also Api Key should have proper privilages to the target services
        bittrex = Bittrex(apikey: "123456789", secretkey: "123456789")
    }
    
    override func tearDown() {
        super.tearDown()
        
        bittrex = nil
    }
    
    func testGetOpenOrders(){
        let expectation: XCTestExpectation = self.expectation(description: "get currencies request")
        bittrex.getOpenOrders() { (result) in
            switch result{
            case .success(let data):
                XCTAssertNotNil(data as! GetOpenOrdersResponse , "GetOpenOrdersResponse is not parsed")
            case .failed(let error):
                XCTAssertTrue(error.isEmpty, "getOpenOrders not sending data")
            }
            expectation.fulfill()
        }
        self.waitForExpectations(timeout: 10.0, handler: { err in
            print(err?.localizedDescription)
        })
    }
}
