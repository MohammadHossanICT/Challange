//
//  RedditService.swift
//  RedditSwiftUIAsyncAwait
//
//  Created by Christian Quicano on 3/3/22.
//

import Foundation

class RedditService: NetworkProtocol {
    
    typealias Model = RedditResponse
    
    func getModel(from url: String) async throws -> Model {
        print(url)
        let data = try await getData(from: url)
        return try JSONDecoder().decode(Model.self, from: data)
    }
    
}
