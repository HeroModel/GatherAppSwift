//
//  API.swift
//  GatherAppSwift
//
//  Created by apple on 2018/5/18.
//  Copyright © 2018年 Apple. All rights reserved.
//

import Foundation
import Moya
//enum API {
//    case Show
//    case request(url:String, body:String, header:[String: Any])
//}
//
//extension API:TargetType {
//    var baseURL: URL {
//        switch self {
//        case .Show:
//            return URL.init(string: "http://192.168.0.109/shareman")!
//        case .request:
//            return URL.init(string: "https://www.hxx0571.com/shareman")!
//        }
//    }
//
//    var path: String {
//        switch self {
//        case .Show:
//            return "/sellBrandInfo/getBrandInfoAll"
//        case .request:
//            return "/sellBrandInfo/getBrandInfoAll"
//        }
//    }
//
//    var method: Moya.Method {
//        switch self {
//        case .Show:
//            return .get
//        case .request:
//            return .post
//        }
//    }
//
//    var sampleData: Data {
//        return "".data(using: String.Encoding.utf8)!
//    }
//
//    var task: Task {
//        switch self {
//        case .Show:
//            return .requestPlain
//        case let .request(url, body, header):
//            return .requestParameters(parameters: ["email": url, "password": body, "password": header], encoding: JSONEncoding.default)
//        }
//    }
//
//    var headers: [String : String]? {
//        return ["Content-Type":"application/x-www-form-urlencoded"]
//    }
//
//    var validate: Bool {
//        return false
//    }
//
//}
enum Joke {
    
    case  Image(count:Int,page:Int)
    
    case  Video(count:Int,page:Int)
    
    case  latest(count:Int,page:Int)
    
}


extension Joke : TargetType{
    var task: Task {
        return .requestPlain
    }
    
    var headers: [String : String]? {
        return ["Content-Type":"application/x-www-form-urlencoded"]
    }
    
    var baseURL: URL {
        return NSURL(string: "http://m2.qiushibaike.com/article/list")! as URL
    }
    
    var path: String {
        switch  self {
        case .Image:
            return "/imgrank"
        case .Video:
            return "/video"
        case .latest:
            return "/latest"
        }
    }
    
    var method: Moya.Method {
        
        return .get
    }
    
    var parameters: [String: AnyObject]? {
        
        return ["page":"1" as AnyObject,"count":"4" as AnyObject]
    }
    
    var sampleData: Data {
        return ("{\"login\": \"xiaoMing\", \"id\": 100}".data(using: String.Encoding.utf8)! as NSData) as Data
    }
    
}

