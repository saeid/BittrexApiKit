//
//  Balance.swift
//  Bittrex
//
//  Created by Saeid Basirnia on 12/29/17.
//  Copyright © 2017 Saeid Basirnia. All rights reserved.
//

import Foundation

public struct Balance: Decodable {
    public let currency: String
    public let balance: Double
    public let available: Double
    public let pending: Double
    public let cryptoAddress: String?
    public let requested: Bool?
    public let uuid: String?
    
    public enum CodingKeys: String, CodingKey {
        case currency = "Currency"
        case balance = "Balance"
        case available = "Available"
        case pending = "Pending"
        case cryptoAddress = "CryptoAddress"
        case requested = "Requested"
        case uuid = "Uuid"
    }
}
