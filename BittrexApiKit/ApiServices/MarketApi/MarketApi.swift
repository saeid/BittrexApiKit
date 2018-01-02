//
//  MarketApi.swift
//  Bittrex
//
//  Created by Saeid Basirnia on 12/31/17.
//  Copyright © 2017 Saeid Basirnia. All rights reserved.
//

import Foundation

final class MarketApi{
    struct BuyLimit: APIBase{
        typealias response = BuySellLimitResponse
        var isPrivate: Bool{
            return true
        }
        
        var service: String{
            return "market/buylimit"
        }
        
        let market: String
        let quantity: String
        let rate: String
        var parameters: [String: String]?{
            return ["market": market, "quantity": quantity, "rate": rate]
        }
    }

    struct SellLimit: APIBase{
        typealias response = BuySellLimitResponse
        var isPrivate: Bool{
            return true
        }
        
        var service: String{
            return "market/selllimit"
        }
        let market: String
        let quantity: String
        let rate: String
        var parameters: [String: String]?{
            return ["market": market, "quantity": quantity, "rate": rate]
        }
    }

    struct MarketCancel: APIBase{
        typealias response = CancelResponse
        var isPrivate: Bool{
            return true
        }
        
        var service: String{
            return "market/marketcancel"
        }
        let uuid: String
        var parameters: [String: String]?{
            return ["uuid": uuid]
        }
    }

    struct GetOpenOrders: APIBase{
        typealias response = GetOpenOrdersResponse
        var isPrivate: Bool{
            return true
        }
        
        var service: String{
            return "market/getopenorders"
        }
        let market: String
        var parameters: [String: String]?{
            return ["market": market]
        }
    }
}
