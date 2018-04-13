//
//  Post.swift
//  GatherAppSwift
//
//  Created by apple on 2018/4/13.
//  Copyright © 2018年 Apple. All rights reserved.
//

import Foundation
import ObjectMapper

class Post: Mappable {
    var id: Int?
    var title: String?
    var body: String?
    var userId: Int?
    
    
    required init?(map: Map) {
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        title <- map["title"]
        body <- map["body"]
        userId <- map["userId"]
    }
}
