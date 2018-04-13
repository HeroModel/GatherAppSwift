//
//  NetworkTool.swift
//  GatherAppSwift
//
//  Created by apple on 2018/4/13.
//  Copyright © 2018年 Apple. All rights reserved.
//

import Foundation
import RxSwift
import Moya
import Alamofire



enum NetworkTool {
    case Show
    case Create(title: String, body: String, userId: Int)
}

extension NetworkTool: TargetType {
    var baseURL: URL {
        return URL(string: "http://jsonplaceholder.typicode.com")!
    }
    
    var path: String {
        switch self {
        case .Show:
            return "/posts"
        case .Create(_, _, _):
            return "/posts"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .Show:
            return HTTPMethod.get
        case .Create(_, _, _):
            return HTTPMethod.get
        }
    }
    
    var sampleData: Data {
        switch self {
        case .Show:
            return "[{\"userId\": \"1\", \"Title\": \"Title String\", \"Body\": \"Body String\"}]".data(using: String.Encoding.utf8)!
        case .Create(_, _, _):
            return "Create post successfully".data(using: String.Encoding.utf8)!
        }
    }
    
    var task: Task {
        return .requestPlain
    }
    
    var headers: [String : String]? {
        return nil
    }
}




