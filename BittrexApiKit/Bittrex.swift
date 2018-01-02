//
//  Bittrex.swift
//  Bittrex
//
//  Created by Saeid Basirnia on 12/31/17.
//  Copyright © 2017 Saeid Basirnia. All rights reserved.
//

import UIKit

public enum Result{
    case success(object: Any)
    case failed(err: String)
}

public final class Bittrex: NSObject {
    fileprivate var auth: Auth
    
    public init(apikey: String, secretkey: String){            
        let nonce: String = UUID().uuidString
        auth = Auth(apikey: apikey, secretkey: secretkey, nonce: nonce)
    }
}

//MARK: Public API
extension Bittrex{
    public func getMarkets(completion: @escaping (_ result: Result) -> ()){
        let request = PublicApi.GetMarkets()
        HTTPCall(baseRequest: request, auth: auth).send { (data, err) in
            if let error = err{
                completion(.failed(err: error.localizedDescription))
            }
            guard let data = data as? Data else{
                completion(.failed(err: "No Data"))
                return
            }
            do{
                let markets = try JSONDecoder().decode(GetMarketsResponse.self, from: data)

                completion(.success(object: markets as GetMarketsResponse))
            }catch let err{
                completion(.failed(err: err.localizedDescription))
            }
        }
    }

    public func getCurrencies(completion: @escaping (_ result: Result) -> ()){
        let request = PublicApi.GetCurrencies()
        HTTPCall(baseRequest: request, auth: auth).send { (data, err) in
            if let error = err{
                completion(.failed(err: error.localizedDescription))
            }
            guard let data = data as? Data else{
                completion(.failed(err: "No Data"))
                return
            }
            do{
                let markets = try JSONDecoder().decode(GetCurrenciesResponse.self, from: data)

                completion(.success(object: markets as GetCurrenciesResponse))
            }catch let err{
                completion(.failed(err: err.localizedDescription))
            }
        }
    }

    public func getTicker(market: String, completion: @escaping (_ result: Result) -> ()){
        let request = PublicApi.GetTicker(market: market)
        HTTPCall(baseRequest: request, auth: auth).send { (data, err) in
            if let error = err{
                completion(.failed(err: error.localizedDescription))
            }
            guard let data = data as? Data else{
                completion(.failed(err: "No Data"))
                return
            }
            do{
                let markets = try JSONDecoder().decode(GetTickerResponse.self, from: data)

                completion(.success(object: markets as GetTickerResponse))
            }catch let err{
                completion(.failed(err: err.localizedDescription))
            }
        }
    }

    public func getMarketSummaries(completion: @escaping (_ result: Result) -> ()){
        let request = PublicApi.GetMarketSummaries()
        HTTPCall(baseRequest: request, auth: auth).send { (data, err) in
            if let error = err{
                completion(.failed(err: error.localizedDescription))
            }
            guard let data = data as? Data else{
                completion(.failed(err: "No Data"))
                return
            }
            do{
                let markets = try JSONDecoder().decode(GetMarketSummariesResponse.self, from: data)

                completion(.success(object: markets as GetMarketSummariesResponse))
            }catch let err{
                completion(.failed(err: err.localizedDescription))
            }
        }
    }

    public func getMarketSummary(market: String, completion: @escaping (_ result: Result) -> ()){
        let request = PublicApi.GetMarketSummary(market: market)
        HTTPCall(baseRequest: request, auth: auth).send { (data, err) in
            if let error = err{
                completion(.failed(err: error.localizedDescription))
            }
            guard let data = data as? Data else{
                completion(.failed(err: "No Data"))
                return
            }
            do{
                let markets = try JSONDecoder().decode(GetMarketSummaryResponse.self, from: data)

                completion(.success(object: markets as GetMarketSummaryResponse))
            }catch let err{
                completion(.failed(err: err.localizedDescription))
            }
        }
    }

    public func getOrderBook(market: String, completion: @escaping (_ result: Result) -> ()){
        let request = PublicApi.GetOrderBook(market: market)
        HTTPCall(baseRequest: request, auth: auth).send { (data, err) in
            if let error = err{
                completion(.failed(err: error.localizedDescription))
            }
            guard let data = data as? Data else{
                completion(.failed(err: "No Data"))
                return
            }
            do{
                let markets = try JSONDecoder().decode(GetOrderBookResponse.self, from: data)

                completion(.success(object: markets as GetOrderBookResponse))
            }catch let err{
                completion(.failed(err: err.localizedDescription))
            }
        }
    }
    
    public func getMarketHistory(market: String, completion: @escaping (_ result: Result) -> ()){
        let request = PublicApi.GetMarketHistory(market: market)
        HTTPCall(baseRequest: request, auth: auth).send { (data, err) in
            if let error = err{
                completion(.failed(err: error.localizedDescription))
            }
            guard let data = data as? Data else{
                completion(.failed(err: "No Data"))
                return
            }
            do{
                let markets = try JSONDecoder().decode(GetMarketHistoryResponse.self, from: data)

                completion(.success(object: markets as GetMarketHistoryResponse))
            }catch let err{
                completion(.failed(err: err.localizedDescription))
            }
        }
    }
}

//MARK: - Market API
extension Bittrex{
    public func buyLimit(market: String, quantity: String, rate: String, completion: @escaping (_ result: Result) -> ()){
        let request = MarketApi.BuyLimit(market: market, quantity: quantity, rate: rate)
        HTTPCall(baseRequest: request, auth: auth).send { (data, err) in
            if let error = err{
                completion(.failed(err: error.localizedDescription))
            }
            guard let data = data as? Data else{
                completion(.failed(err: "No Data"))
                return
            }
            do{
                let markets = try JSONDecoder().decode(BuySellLimitResponse.self, from: data)
                
                completion(.success(object: markets as BuySellLimitResponse))
            }catch let err{
                completion(.failed(err: err.localizedDescription))
            }
        }
    }

    public func sellLimit(market: String, quantity: String, rate: String, completion: @escaping (_ result: Result) -> ()){
        let request = MarketApi.SellLimit(market: market, quantity: quantity, rate: rate)
        HTTPCall(baseRequest: request, auth: auth).send { (data, err) in
            if let error = err{
                completion(.failed(err: error.localizedDescription))
            }
            guard let data = data as? Data else{
                completion(.failed(err: "No Data"))
                return
            }
            do{
                let markets = try JSONDecoder().decode(BuySellLimitResponse.self, from: data)
                
                completion(.success(object: markets as BuySellLimitResponse))
            }catch let err{
                completion(.failed(err: err.localizedDescription))
            }
        }
    }
    
    public func cancelBuySell(uuid: String, completion: @escaping (_ result: Result) -> ()){
        let request = MarketApi.MarketCancel(uuid: uuid)
        HTTPCall(baseRequest: request, auth: auth).send { (data, err) in
            if let error = err{
                completion(.failed(err: error.localizedDescription))
            }
            guard let data = data as? Data else{
                completion(.failed(err: "No Data"))
                return
            }
            do{
                let markets = try JSONDecoder().decode(CancelResponse.self, from: data)
                
                completion(.success(object: markets as CancelResponse))
            }catch let err{
                completion(.failed(err: err.localizedDescription))
            }
        }
    }
    
    public func getOpenOrders(market: String = "", completion: @escaping (_ result: Result) -> ()){
        let request = MarketApi.GetOpenOrders(market: market)
        HTTPCall(baseRequest: request, auth: auth).send { (data, err) in
            if let error = err{
                completion(.failed(err: error.localizedDescription))
            }
            guard let data = data as? Data else{
                completion(.failed(err: "No Data"))
                return
            }
            do{
                let markets = try JSONDecoder().decode(GetOpenOrdersResponse.self, from: data)
                
                completion(.success(object: markets as GetOpenOrdersResponse))
            }catch let err{
                completion(.failed(err: err.localizedDescription))
            }
        }
    }
}

//MARK: - Account API
extension Bittrex{
    public func getBalances(completion: @escaping (_ result: Result) -> ()){
        let request = AccountApi.GetBalances()
        HTTPCall(baseRequest: request, auth: auth).send { (data, err) in
            if let error = err{
                completion(.failed(err: error.localizedDescription))
            }
            guard let data = data as? Data else{
                completion(.failed(err: "No Data"))
                return
            }
            do{
                let markets = try JSONDecoder().decode(GetBalancesResponse.self, from: data)
                
                completion(.success(object: markets as GetBalancesResponse))
            }catch let err{
                completion(.failed(err: err.localizedDescription))
            }
        }
    }

    public func getBalance(currency: String, completion: @escaping (_ result: Result) -> ()){
        let request = AccountApi.GetBalance(currency: currency)
        HTTPCall(baseRequest: request, auth: auth).send { (data, err) in
            if let error = err{
                completion(.failed(err: error.localizedDescription))
            }
            guard let data = data as? Data else{
                completion(.failed(err: "No Data"))
                return
            }
            do{
                let markets = try JSONDecoder().decode(GetBalanceResponse.self, from: data)
                
                completion(.success(object: markets as GetBalanceResponse))
            }catch let err{
                completion(.failed(err: err.localizedDescription))
            }
        }
    }

    public func getDepositAddress(currency: String, completion: @escaping (_ result: Result) -> ()){
        let request = AccountApi.GetDepositAddres(currency: currency)
        HTTPCall(baseRequest: request, auth: auth).send { (data, err) in
            if let error = err{
                completion(.failed(err: error.localizedDescription))
            }
            guard let data = data as? Data else{
                completion(.failed(err: "No Data"))
                return
            }
            do{
                let markets = try JSONDecoder().decode(GetDepositAddressResponse.self, from: data)
                
                completion(.success(object: markets as GetDepositAddressResponse))
            }catch let err{
                completion(.failed(err: err.localizedDescription))
            }
        }
    }

    public func withdraw(currency: String, quantity: String, address: String, completion: @escaping (_ result: Result) -> ()){
        let request = AccountApi.Withdraw(currency: currency, quantity: quantity, address: address)
        HTTPCall(baseRequest: request, auth: auth).send { (data, err) in
            if let error = err{
                completion(.failed(err: error.localizedDescription))
            }
            guard let data = data as? Data else{
                completion(.failed(err: "No Data"))
                return
            }
            do{
                let markets = try JSONDecoder().decode(WithdrawResponse.self, from: data)
                
                completion(.success(object: markets as WithdrawResponse))
            }catch let err{
                completion(.failed(err: err.localizedDescription))
            }
        }
    }
    
    public func getOrder(uuid: String, completion: @escaping (_ result: Result) -> ()){
        let request = AccountApi.GetOrder(uuid: uuid)
        HTTPCall(baseRequest: request, auth: auth).send { (data, err) in
            if let error = err{
                completion(.failed(err: error.localizedDescription))
            }
            guard let data = data as? Data else{
                completion(.failed(err: "No Data"))
                return
            }
            do{
                let markets = try JSONDecoder().decode(GetOrderResponse.self, from: data)
                
                completion(.success(object: markets as GetOrderResponse))
            }catch let err{
                completion(.failed(err: err.localizedDescription))
            }
        }
    }

    public func getOrderHistory(market: String, completion: @escaping (_ result: Result) -> ()){
        let request = AccountApi.GetOrderHistory(market: market)
        HTTPCall(baseRequest: request, auth: auth).send { (data, err) in
            if let error = err{
                completion(.failed(err: error.localizedDescription))
            }
            guard let data = data as? Data else{
                completion(.failed(err: "No Data"))
                return
            }
            do{
                let markets = try JSONDecoder().decode(GetOrderHistoryResponse.self, from: data)
                
                completion(.success(object: markets as GetOrderHistoryResponse))
            }catch let err{
                completion(.failed(err: err.localizedDescription))
            }
        }
    }

    public func getWithdrawalHistory(currency: String, completion: @escaping (_ result: Result) -> ()){
        let request = AccountApi.GetWithdrawalHistory(currency: currency)
        HTTPCall(baseRequest: request, auth: auth).send { (data, err) in
            if let error = err{
                completion(.failed(err: error.localizedDescription))
            }
            guard let data = data as? Data else{
                completion(.failed(err: "No Data"))
                return
            }
            do{
                let markets = try JSONDecoder().decode(GetWithdrawDepositHistoryResponse.self, from: data)
                
                completion(.success(object: markets as GetWithdrawDepositHistoryResponse))
            }catch let err{
                completion(.failed(err: err.localizedDescription))
            }
        }
    }

    public func getDepositHistory(currency: String, completion: @escaping (_ result: Result) -> ()){
        let request = AccountApi.GetDepositHistory(currency: currency)
        HTTPCall(baseRequest: request, auth: auth).send { (data, err) in
            if let error = err{
                completion(.failed(err: error.localizedDescription))
            }
            guard let data = data as? Data else{
                completion(.failed(err: "No Data"))
                return
            }
            do{
                let markets = try JSONDecoder().decode(GetWithdrawDepositHistoryResponse.self, from: data)
                
                completion(.success(object: markets as GetWithdrawDepositHistoryResponse))
            }catch let err{
                completion(.failed(err: err.localizedDescription))
            }
        }
    }
}
