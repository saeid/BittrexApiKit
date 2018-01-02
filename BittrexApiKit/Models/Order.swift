//
//  Order.swift
//  BittrexApiKit
//
//  Created by Saeid Basirnia on 1/1/18.
//  Copyright © 2018 Saeid Basirnia. All rights reserved.
//

import Foundation

public struct Order: Decodable {
    public let accountId: String?
    public let orderUuid: String
    public let exchange: String
    public let orderType: String
    public let quantity: Double
    public let quantityRemaining: Double
    public let limit: Double
    public let reserved: Double
    public let reservedRemaining: Double
    public let commissionReserved: Double
    public let commissionReservedRemaining: Double
    public let commissionPaid: Double
    public let price: Double
    public let pricePerUnit: Double?
    public let opened: String
    public let closed: String?
    public let isOpen: Bool
    public let sentinel: String
    public let cancelInitiated: Bool
    public let immediateOrCancel: Bool
    public let isConditional: Bool
    public let condition: String?
    public let conditionTarget: String?
    
    enum CodingKeys: String, CodingKey {
        case accountId = "AccountId"
        case orderUuid = "OrderUuid"
        case exchange = "Exchange"
        case orderType = "OrderType"
        case quantity = "Quantity"
        case quantityRemaining = "QuantityRemaining"
        case limit = "Limit"
        case reserved = "Reserved"
        case reservedRemaining = "ReserveRemaining"
        case commissionReserved = "CommissionReserved"
        case commissionReservedRemaining = "CommissionReserveRemaining"
        case commissionPaid = "CommissionPaid"
        case price = "Price"
        case pricePerUnit = "PricePerUnit"
        case opened = "Opened"
        case closed = "Closed"
        case isOpen = "IsOpen"
        case sentinel = "Sentinel"
        case cancelInitiated = "CancelInitiated"
        case immediateOrCancel = "ImmediateOrCancel"
        case isConditional = "IsConditional"
        case condition = "Condition"
        case conditionTarget = "ConditionTarget"
    }
}
