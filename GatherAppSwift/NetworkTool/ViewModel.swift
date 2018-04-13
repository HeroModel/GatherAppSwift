//
//  ViewModel.swift
//  GatherAppSwift
//
//  Created by apple on 2018/4/13.
//  Copyright © 2018年 Apple. All rights reserved.
//

import Foundation
import RxSwift
import Moya

class ViewModel {
    private let provider = MoyaProvider<NetworkTool>()
    
    func getPosts() -> Observable<[Post]> {
        return provider.request(.Show, completion: { (success) in
           
        }) as! Observable<[Post]>
    }

    func createPost(title: String, body: String, userId: Int) -> Observable<Post> {
        return provider.request(.Create(title: title, body: body, userId: userId), completion: { (success) in
            
        }) as! Observable<Post>
    }
}
