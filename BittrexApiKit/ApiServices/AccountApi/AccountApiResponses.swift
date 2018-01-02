//
//  AccountApiResponses.swift
//  BittrexApiKit
//
//  Created by Saeid Basirnia on 1/1/18.
//  Copyright © 2018 Saeid Basirnia. All rights reserved.
//

import Foundation


//MARK: - Account Responses
public struct BuySellLimitResponse: Decodable {
    public let message: String
    public let uuid: String
    public let success: String
    
    public enum CodingKeys: String, CodingKey {
        case message
        case uuid = "result, uuid"
        case success
    }
}

public struct GetOpenOrdersResponse: Decodable {
    public let message: String
    public let openOrdersData: [OpenOrder]
    public let success: Bool
    
    public enum CodingKeys: String, CodingKey {
        case message
        case openOrdersData = "result"
        case success
    }
}

public struct GetOrderHistoryResponse: Decodable{
    public let message: String
    public let success: Bool
    public let historyData: [OrderHistory]
    
    public enum CodingKeys: String, CodingKey{
        case message
        case success
        case historyData = "result"
    }
}

public struct CancelResponse: Decodable {
    public let message: String
    public let success: Bool
}

public struct GetWithdrawDepositHistoryResponse: Decodable {
    public let message: String
    public let success: Bool
    public let historyData: [WithdrawDepositHistory]
    
    public enum CodingKeys: String, CodingKey {
        case message
        case success
        case historyData = "result"
    }
}
