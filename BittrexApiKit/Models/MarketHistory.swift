//
//  MarketHistory.swift
//  Bittrex
//
//  Created by Saeid Basirnia on 12/29/17.
//  Copyright © 2017 Saeid Basirnia. All rights reserved.
//

import Foundation

public struct MarketHistory: Decodable {
    public let id: Int
    public let quantity: Double
    public let price: Double
    public let total: Double
    public let fillType: String
    public let orderType: String
    
    public enum CodingKeys: String, CodingKey {
        case id = "Id"
        case quantity = "Quantity"
        case price = "Price"
        case total = "Total"
        case fillType = "FillType"
        case orderType = "OrderType"
    }
}
