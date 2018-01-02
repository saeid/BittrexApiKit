//
//  MarketApiResponses.swift
//  BittrexApiKit
//
//  Created by Saeid Basirnia on 1/1/18.
//  Copyright © 2018 Saeid Basirnia. All rights reserved.
//

import Foundation


//MARK: - Market API
public struct GetBalancesResponse: Decodable {
    public let message: String
    public let balancesData: [Balance]
    public let success: Bool
    
    public enum CodingKeys: String, CodingKey {
        case balancesData = "result"
        case message
        case success
    }
}

public struct GetBalanceResponse: Decodable {
    public let message: String
    public let balanceData: Balance
    public let success: Bool
    
    public enum CodingKeys: String, CodingKey {
        case balanceData = "result"
        case message
        case success
    }
}

public struct GetDepositAddressResponse: Decodable {
    let message: String
    let addressData: Address
    let success: Bool
    
    enum CodingKeys: String, CodingKey {
        case addressData = "result"
        case message
        case success
    }
}

public struct WithdrawResponse: Decodable {
    public let uuid: String
    public let message: String
    public let success: Bool
    
    public enum CodingKeys: String, CodingKey {
        case uuid = "result"
        case message
        case success
    }
}
