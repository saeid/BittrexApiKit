# BittrexApiKit
Swift client for Bittrex api. It support all APIs with most recent changes. more info [here](https://www.bittrex.com/Home/Api)

```swift
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
```swift
    public func getMarkets()
    public func getCurrencies()
    public func getTicker()
    public func getMarketSummaries()
    public func getMarketSummary(market: String)
    public func getOrderBook(market: String)
    public func getMarketHistory(market: String)
```

### Market APIs
```swift
    public func buyLimit(market: String, quantity: String, rate: String)
    public func sellLimit(market: String, quantity: String, rate: String)
    public func cancelBuySell(uuid: String)
    public func getOpenOrders(market: String)
```

### Account APIs
```swift
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
- iOS 9+


## Installation
You can simply install using Cocoapods
```
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'BittrexApiKit'
end
```

## Contribution
You want help? That's great!
submit a pull request! :grinning:


