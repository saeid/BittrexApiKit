//
//  Address.swift
//  Bittrex
//
//  Created by Saeid Basirnia on 12/29/17.
//  Copyright © 2017 Saeid Basirnia. All rights reserved.
//

import Foundation

public struct Address: Decodable {
    public let currency: String
    public let address: String
    
    public enum CodingKeys: String, CodingKey {
        case currency = "Currency"
        case address = "Address"
    }
}
