# BittrexApiKit
Swift client for Bittrex api. It support all APIs with most recent changes. more info [here](https://www.bittrex.com/Home/Api)

```
let api = Bittrex(apikey: "api key", secretkey: "secret key")
api.getMarkets() { (response) in
    switch response{
        case .success(let data):
            print(data)
        case .failed(let err):
            print(err)
    }
}

api.getBalance(currency: 'BTC') { (response) in
    switch response{
        case .success(let data):
            print(data)
        case .failed(let err):
            print(err)
    }
}
```

## Supported APIs
### Public APIs
```
public func getMarkets()
public func getCurrencies()
public func getTicker()
public func getMarketSummaries()
public func getMarketSummary(market: String)
public func getOrderBook(market: String)
public func getMarketHistory(market: String)
```

### Market APIs
```
public func buyLimit(market: String, quantity: String, rate: String)
public func sellLimit(market: String, quantity: String, rate: String)
public func cancelBuySell(uuid: String)
public func getOpenOrders(market: String)
```

### Account APIs
```
public func getBalances()
public func getBalance(currency: String)
public func getDepositAddress(currency: String)
public func withdraw(currency: String, quantity: String, address: String)
public func getOrder(uuid: String)
public func getOrderHistory(uuid: String)
public func getWithdrawalHistory(currency: String)
public func getDepositHistory(currency: String)
```

## Requirments
- Swift 4+
- iOS 10+


## Contribution
You want help? That's great!
submit a pull request! :grinning:


