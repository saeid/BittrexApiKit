//
//  AccountApi.swift
//  Bittrex
//
//  Created by Saeid Basirnia on 12/31/17.
//  Copyright © 2017 Saeid Basirnia. All rights reserved.
//

import Foundation

final class AccountApi{
    struct GetBalances: APIBase{
        typealias response = GetBalancesResponse
        var isPrivate: Bool{
            return true
        }
        
        var service: String{
            return "account/getbalances"
        }
        
        var options: [String : String]?{
            return nil
        }
    }
    
    struct GetBalance: APIBase{
        typealias response = GetBalanceResponse
        var isPrivate: Bool{
            return true
        }
        
        var service: String{
            return "account/getbalance"
        }
        
        var options: [String : String]?{
            return nil
        }
        let currency: String
        var parameters: [String: String]?{
            return ["currency": currency]
        }
    }
    
    struct GetDepositAddres: APIBase{
        typealias response = GetDepositAddressResponse
        var isPrivate: Bool{
            return true
        }
        
        var service: String{
            return "account/getdepositaddress"
        }
        let currency: String
        var parameters: [String: String]?{
            return ["currency": currency]
        }
    }
    
    struct Withdraw: APIBase{
        typealias response = WithdrawResponse
        var isPrivate: Bool{
            return true
        }
        
        var service: String{
            return "account/withdraw"
        }
        let currency: String
        let quantity: String
        let address: String
        var parameters: [String: String]?{
            return ["currency": currency, "quantity": quantity, "address": address]
        }
    }
    
    struct GetOrder: APIBase{
        typealias response = GetOrderResponse
        var isPrivate: Bool{
            return true
        }
        
        var service: String{
            return "account/getorder"
        }
        let uuid: String
        var parameters: [String: String]?{
            return ["uuid": uuid]
        }
    }

    struct GetOrderHistory: APIBase{
        typealias response = GetOrderHistoryResponse
        var isPrivate: Bool{
            return true
        }
        
        var service: String{
            return "account/getorderhistory"
        }
        let market: String
        var parameters: [String: String]?{
            return ["market": market]
        }
    }
    
    //TODO: create response for these 2
    struct GetWithdrawalHistory: APIBase{
        typealias response = GetWithdrawDepositHistoryResponse
        var isPrivate: Bool{
            return true
        }
        
        var service: String{
            return "account/getwithdrawalhistory"
        }
        let currency: String
        var parameters: [String: String]?{
            return ["currency": currency]
        }

    }

    struct GetDepositHistory: APIBase{
        typealias response = GetWithdrawDepositHistoryResponse
        var isPrivate: Bool{
            return true
        }
        
        var service: String{
            return "account/getdeposithistory"
        }
        let currency: String
        var parameters: [String: String]?{
            return ["currency": currency]
        }
    }
}
