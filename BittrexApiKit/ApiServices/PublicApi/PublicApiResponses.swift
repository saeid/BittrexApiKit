//
//  PublicApiResponses.swift
//  BittrexApiKit
//
//  Created by Saeid Basirnia on 1/1/18.
//  Copyright © 2018 Saeid Basirnia. All rights reserved.
//

import Foundation

//MARK: - Public Responses
public struct GetMarketsResponse: Decodable{
    public let success: Bool
    public let message: String
    public let marketsData: [Market]
    
    public enum CodingKeys: String, CodingKey{
        case success
        case message
        case marketsData = "result"
    }
}

public struct GetCurrenciesResponse: Decodable{
    public let success: Bool
    public let message: String
    public let currenciesData: [Currency]
    
    public enum CodingKeys: String, CodingKey{
        case success
        case message
        case currenciesData = "result"
    }
}

public struct GetTickerResponse: Decodable{
    public let success: Bool
    public let message: String
    public let tickData: Tick?
    
    public enum CodingKeys: String, CodingKey{
        case success
        case message
        case tickData = "result"
    }
}

public struct GetMarketSummariesResponse: Decodable{
    public let success: Bool
    public let message: String
    public let marketSummariesData: [MarketSummary]
    
    public enum CodingKeys: String, CodingKey{
        case success
        case message
        case marketSummariesData = "result"
    }
}

public struct GetMarketSummaryResponse: Decodable{
    public let success: Bool
    public let message: String
    public let marketSummaryData: [MarketSummary]
    
    public enum CodingKeys: String, CodingKey{
        case success
        case message
        case marketSummaryData = "result"
    }
}

public struct GetOrderBookResponse: Decodable{
    public let success: Bool
    public let message: String
    public let orderBookData: OrderBook
    
    public enum CodingKeys: String, CodingKey{
        case success
        case message
        case orderBookData = "result"
    }
}

public struct GetOrderResponse: Decodable{
    public let success: Bool
    public let message: String
    public let orderData: Order?
    
    public enum CodingKeys: String, CodingKey{
        case success
        case message
        case orderData = "result"
    }
}

public struct GetMarketHistoryResponse: Decodable{
    public let success: Bool
    public let message: String
    public let marketHistoriesData: [MarketHistory]
    
    public enum CodingKeys: String, CodingKey{
        case success
        case message
        case marketHistoriesData = "result"
    }
}
