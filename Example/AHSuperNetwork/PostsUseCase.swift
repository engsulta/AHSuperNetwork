//
//  PostsUseCase.swift
//  AHSuperNetwork_Example
//
//  Created by Ahmed Sultan on 1/7/20.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation
import AHSuperNetwork
struct PostModel: Codable {
    var userId: Int
    var id: Int
    var title: String
    var body: String
}
class PostsUseCase {
    var networkClient : AHNetworkClient = AHNetworkClient(baseURL: "https://jsonplaceholder.typicode.com", session: URLSession.shared)
    
    func fetchPosts(completion: @escaping AHNetworkCompletion) -> [PostModel]?{
        let postRequest = AHRequest(path: "/posts", httpMethod: .get, httpTask: .requestParameters(bodyParameters: [:], bodyEncoding: .urlEncoding, urlParameters: ["userId":"1"]),cache: true)
        let cachedResponse = networkClient.execute(request: postRequest, model: [PostModel].self,completion: completion)
        return cachedResponse
    }
}
