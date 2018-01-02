//
//  RequestManager.swift
//
//  Created by Saeid Basirnia on 1/14/17.
//  Copyright © 2017 Saeid Basirnia. All rights reserved.
//

import UIKit

public enum HTTPMethod: String{
    case get = "get"
    case post = "post"
    case delete = "delete"
    case put = "put"
}

enum ResponseStatus: String{
    case ok = "Response -> OK"
    case badRequest = "Response -> Bad Request"
    case unauthorized = "Response -> Unauthorized"
    case forbidden = "Response -> Forbidden"
    case notFound = "Response -> Not Found"
    case exist = "Response -> Already Exist"
    case failed = "Response -> Failed"
    case unknown = "Response -> Unknown Response"
}

enum RequestStatus: String{
    case success = "Request Succeed"
    case failed = "Request Failed"
}

class RequestManager: NSObject {
    static func reqManager(url: String, httpMethod: HTTPMethod, headers: [String: String]?, completion: @escaping (_ jsonData: Any?, _ err: Error?) -> ()){
        guard let url: URL = URL(string: url) else{
            return
        }
        var request: URLRequest = URLRequest(url: url)
        request.httpMethod = httpMethod.rawValue
        request.timeoutInterval = 10
        
        if let headers = headers{
            for h in headers{
                request.addValue(h.value, forHTTPHeaderField: h.key)
            }
        }
        
        let task = URLSession.shared.dataTask(with: request, completionHandler: { data, response, error in
            DispatchQueue.main.async(execute: {
                if let err = error{
                    return completion(nil, err)
                }
                guard let data = data else{
                    return completion(nil, nil)
                }
                return completion(data, nil)
            })
        })
        task.resume()
    }
}

extension RequestManager{
    static func checkStatusCode(_ code: Int) -> ResponseStatus{
        switch code {
        case 200, 201, 204:
            return .ok
        case 400:
            return .badRequest
        case 401:
            return .unauthorized
        case 403:
            return .forbidden
        case 404:
            return .notFound
        case 500:
            return .failed
        default:
            return .unknown
        }
    }
}

