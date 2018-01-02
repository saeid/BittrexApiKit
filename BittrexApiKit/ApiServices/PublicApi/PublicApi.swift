//
//  PublicApi.swift
//  Bittrex
//
//  Created by Saeid Basirnia on 12/29/17.
//  Copyright © 2017 Saeid Basirnia. All rights reserved.
//

import Foundation
final class PublicApi{
    struct GetMarkets: APIBase{
        typealias response = GetMarketsResponse
        var isPrivate: Bool{
            return false
        }
        
        var service: String{
            return "public/getmarkets"
        }
    }
    
    struct GetCurrencies: APIBase{
        typealias response = GetCurrenciesResponse
        var isPrivate: Bool{
            return false
        }
        
        var service: String{
            return "public/getcurrencies"
        }
    }
    
    struct GetTicker: APIBase{
        typealias response = GetTickerResponse
        var isPrivate: Bool{
            return false
        }
        
        var service: String{
            return "public/getticker"
        }
        let market: String
        var parameters: [String: String]?{
            return ["market": market]
        }
    }
    
    struct GetMarketSummaries: APIBase{
        typealias response = GetMarketSummariesResponse
        var isPrivate: Bool{
            return false
        }
        var service: String{
            return "public/getmarketSummaries"
        }
    }
    
    struct GetMarketSummary: APIBase{
        typealias response = GetMarketSummaryResponse
        var isPrivate: Bool{
            return false
        }
        var service: String{
            return "public/getmarketsummary"
        }
        let market: String
        var parameters: [String: String]?{
            return ["market": market]
        }
    }
    
    struct GetOrderBook: APIBase{
        typealias response = GetOrderBookResponse
        var isPrivate: Bool{
            return false
        }
        
        var service: String{
            return "public/getorderbook"
        }
        let market: String
        var parameters: [String: String]?{
            return ["market": market, "type": "both"]
        }
    }
    
    struct GetMarketHistory: APIBase{
        typealias response = GetMarketHistoryResponse
        var isPrivate: Bool{
            return false
        }
        
        var service: String{
            return "public/getmarkethistory"
        }
        let market: String
        var parameters: [String: String]?{
            return ["market": market]
        }
    }
}
