//
//  OrderBook.swift
//  Bittrex
//
//  Created by Saeid Basirnia on 12/29/17.
//  Copyright © 2017 Saeid Basirnia. All rights reserved.
//

import Foundation

public struct OrderBook: Decodable {
    public struct Orders: Decodable {
        public let quantity: Double
        public let rate: Double

        public enum CodingKeys: String, CodingKey {
            case quantity = "Quantity"
            case rate = "Rate"
        }
    }
    public let buy: [Orders]
    public let sell: [Orders]
}
