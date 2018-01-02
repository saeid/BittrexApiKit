//
//  Tick.swift
//  Bittrex
//
//  Created by Saeid Basirnia on 12/29/17.
//  Copyright © 2017 Saeid Basirnia. All rights reserved.
//

import Foundation

public struct Tick: Decodable {
    public let bid: Double
    public let ask: Double
    public let last: Double
    
    public enum CodingKeys: String, CodingKey {
        case bid = "Bid"
        case ask = "Ask"
        case last = "Last"
    }
}
