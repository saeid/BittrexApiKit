//
//  Currency.swift
//  Bittrex
//
//  Created by Saeid Basirnia on 12/29/17.
//  Copyright © 2017 Saeid Basirnia. All rights reserved.
//

import Foundation

public struct Currency: Decodable {
    public let currency: String
    public let currencyLong: String
    public let minConfirmation: Int64
    public let txFee: Double
    public let isActive: Bool
    public let coinType: String
    public let baseAddress: String?
    
    public enum CodingKeys: String, CodingKey {
        case currency = "Currency"
        case currencyLong = "CurrencyLong"
        case minConfirmation = "MinConfirmation"
        case txFee = "TxFee"
        case isActive = "IsActive"
        case coinType = "CoinType"
        case baseAddress = "BaseAddress"
    }
}
