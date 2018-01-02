//
//  Api.swift
//  Bittrex
//
//  Created by Saeid Basirnia on 12/29/17.
//  Copyright © 2017 Saeid Basirnia. All rights reserved.
//

import Foundation

protocol APIBase {
    var isPrivate: Bool { get }
    var service: String { get }
    var parameters: [String: String]? { get }
    associatedtype response
}

extension APIBase{
    var baseurl: String{
        return "https://bittrex.com/api/"
    }
    
    var httpmethod: HTTPMethod{
        return .get
    }
    
    var apiVersion: String{
        return "v1.1"
    }
    
    var apiurl: URL{
        return URL(string: "\(baseurl)\(apiVersion)")!
    }
    
    var serviceCall: URL{
        return apiurl.appendingPathComponent(service)
    }
    
    var parameters: [String: String]?{
        return nil
    }
}
