//
//  Requests.swift
//  Bittrex
//
//  Created by Saeid Basirnia on 12/30/17.
//  Copyright © 2017 Saeid Basirnia. All rights reserved.
//

import UIKit
import Crypto


struct HTTPCall<Request: APIBase> {
    private let request: Request
    private let auth: Auth
    
    public init(baseRequest: Request, auth: Auth){
        self.request = baseRequest
        self.auth = auth
    }
    
    var url: String{
        return generateUrl()
    }
    
    var headers: [String: String]{
        if !request.isPrivate{
            return [:]
        }
        let sign = HMAC.sign(message: generateUrl(), algorithm: .sha512, key: auth.secretkey)
        
        if let signstr = sign{
            return ["apisign": signstr]
        }
        return [:]
    }
    
    func generateUrl() -> String{
        guard var base = URLComponents(url: request.serviceCall, resolvingAgainstBaseURL: true) else{
            return ""
        }
        var params: [String: String] = [:]
        if let data = request.parameters{
            params = data
        }
        base.queryItems = []
        for itm in params{
            base.queryItems?.append(URLQueryItem(name: itm.key, value: itm.value))
        }
        
        if request.isPrivate{
            base.queryItems?.append(URLQueryItem(name: "apikey", value: auth.apikey))
            base.queryItems?.append(URLQueryItem(name: "nonce", value: auth.nonce))
        }
        
        return base.url?.absoluteString ?? ""
    }
        
    func send(_ completion: @escaping (_ data: Any?, _ err: Error?) -> ()){
        RequestManager.reqManager(url: url, httpMethod: request.httpmethod, headers: headers) { (data, err) in
            completion(data, err)
        }
    }
}
