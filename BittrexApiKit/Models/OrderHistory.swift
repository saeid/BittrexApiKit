//
//  OrderHistory.swift
//  BittrexApiKit
//
//  Created by Saeid Basirnia on 1/1/18.
//  Copyright © 2018 Saeid Basirnia. All rights reserved.
//

import Foundation

public struct OrderHistory: Decodable {
    public let timeStamp: String
    public let orderUuid: String
    public let exchange: String
    public let orderType: String
    public let quantity: Double
    public let quantityRemaining: Double
    public let limit: Double
    public let commission: Double
    public let price: Double
    public let pricePerUnit: Double?
    public let immediateOrCancel: Bool
    public let isConditional: Bool
    public let condition: String?
    public let conditionTarget: String?
    
    enum CodingKeys: String, CodingKey {
        case timeStamp = "TimeStamp"
        case orderUuid = "OrderUuid"
        case exchange = "Exchange"
        case orderType = "OrderType"
        case quantity = "Quantity"
        case quantityRemaining = "QuantityRemaining"
        case limit = "Limit"
        case commission = "Commission"
        case price = "Price"
        case pricePerUnit = "PricePerUnit"
        case immediateOrCancel = "ImmediateOrCancel"
        case isConditional = "IsConditional"
        case condition = "Condition"
        case conditionTarget = "ConditionTarget"
    }
}
