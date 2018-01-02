//
//  PublicApiTests.swift
//  BittrexApiKitTests
//
//  Created by Saeid Basirnia on 1/1/18.
//  Copyright © 2018 Saeid Basirnia. All rights reserved.
//

import XCTest
import BittrexApiKit

class PublicApiTests: XCTestCase {
    var bittrex: Bittrex!

    override func setUp() {
        super.setUp()

        /// Public services do not need `auth` so it can be empty
         bittrex = Bittrex(apikey: "", secretkey: "")
    }
    
    override func tearDown() {
        super.tearDown()
        
        bittrex = nil
    }
    
    func testGetMarkets(){
        let expectation: XCTestExpectation = self.expectation(description: "get markets request")
        bittrex.getMarkets { (result) in
            switch result{
            case .success(let data):
                XCTAssertNotNil(data as! GetMarketsResponse , "GetMarketsResponse is not parsed")
                
            case .failed(let error):
                XCTAssertTrue(error.isEmpty, "GetMarkets not sending data")
            }
            expectation.fulfill()
        }
        self.waitForExpectations(timeout: 10.0, handler: { err in
            print(err?.localizedDescription)
        })
    }
    
    func testGetCurrencies(){
        let expectation: XCTestExpectation = self.expectation(description: "get currencies request")
        bittrex.getCurrencies { (result) in
            switch result{
            case .success(let data):
                XCTAssertNotNil(data as! GetCurrenciesResponse , "GetCurrenciesResponse is not parsed")
                
            case .failed(let error):
                XCTAssertTrue(error.isEmpty, "testGetCurrencies not sending data")
            }
            expectation.fulfill()
        }
        self.waitForExpectations(timeout: 10.0, handler: { err in
            print(err?.localizedDescription)
        })
    }

    func testGetTicker(){
        let expectation: XCTestExpectation = self.expectation(description: "get currencies request")
        bittrex.getTicker(market: "BTC-LTC") { (result) in
            switch result{
            case .success(let data):
                XCTAssertNotNil(data as! GetTickerResponse , "GetTickerResponse is not parsed")
                
            case .failed(let error):
                XCTAssertTrue(error.isEmpty, "testGetTicker not sending data")
            }
            expectation.fulfill()
        }
        self.waitForExpectations(timeout: 10.0, handler: { err in
            print(err?.localizedDescription)
        })
    }
    
    func testGetMarketSummaries(){
        let expectation: XCTestExpectation = self.expectation(description: "get currencies request")
        bittrex.getMarketSummaries { (result) in
            switch result{
            case .success(let data):
                XCTAssertNotNil(data as! GetMarketSummariesResponse , "GetMarketSummariesResponse is not parsed")
                
            case .failed(let error):
                XCTAssertTrue(error.isEmpty, "testGetMarketSummaries not sending data")
            }
            expectation.fulfill()
        }
        self.waitForExpectations(timeout: 10.0, handler: { err in
            print(err?.localizedDescription)
        })
    }

    func testGetMarketSummary(){
        let expectation: XCTestExpectation = self.expectation(description: "get currencies request")
        bittrex.getMarketSummary(market: "BTC-LTC") { (result) in
            switch result{
            case .success(let data):
                XCTAssertNotNil(data as! GetMarketSummaryResponse , "GetMarketSummaryResponse is not parsed")
                
            case .failed(let error):
                XCTAssertTrue(error.isEmpty, "testGetMarketSummary not sending data")
            }
            expectation.fulfill()
        }
        self.waitForExpectations(timeout: 10.0, handler: { err in
            print(err?.localizedDescription)
        })
    }

    func testGetOrderBook(){
        let expectation: XCTestExpectation = self.expectation(description: "get currencies request")
        bittrex.getOrderBook(market: "BTC-LTC") { (result) in
            switch result{
            case .success(let data):
                XCTAssertNotNil(data as! GetOrderBookResponse , "GetOrderBookResponse is not parsed")
                
            case .failed(let error):
                XCTAssertTrue(error.isEmpty, "getOrderBook not sending data")
            }
            expectation.fulfill()
        }
        self.waitForExpectations(timeout: 10.0, handler: { err in
            print(err?.localizedDescription)
        })
    }

    func testMarketHistory(){
        let expectation: XCTestExpectation = self.expectation(description: "get currencies request")
        bittrex.getMarketHistory(market: "BTC-LTC") { (result) in
            switch result{
            case .success(let data):
                XCTAssertNotNil(data as! GetMarketHistoryResponse , "GetMarketHistoryResponse is not parsed")
                
            case .failed(let error):
                XCTAssertTrue(error.isEmpty, "getMarketHistory not sending data")
            }
            expectation.fulfill()
        }
        self.waitForExpectations(timeout: 10.0, handler: { err in
            print(err?.localizedDescription)
        })
    }
}
