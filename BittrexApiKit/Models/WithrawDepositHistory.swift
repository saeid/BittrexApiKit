//
//  WithrawDepositHistory.swift
//  BittrexApiKit
//
//  Created by Saeid Basirnia on 1/1/18.
//  Copyright © 2018 Saeid Basirnia. All rights reserved.
//

import Foundation

public struct WithdrawDepositHistory: Decodable {
    public let paymentId: String
    public let currency: String
    public let amount: Double
    public let address: String
    public let opened: String
    public let authorized: Bool
    public let pendingPayment: Bool
    public let txCost: Double
    public let txId: String?
    public let canceled: Bool
    public let invalidAddress: Bool
    
    public enum CodingKeys: String, CodingKey {
        case paymentId = "PaymentUuid"
        case currency = "Currency"
        case amount = "Amount"
        case address = "Address"
        case opened = "Opened"
        case authorized = "Authorized"
        case pendingPayment = "PendingPayment"
        case txId = "TxId"
        case txCost = "TxCost"
        case canceled = "Canceled"
        case invalidAddress = "InvalidAddress"
    }
}
