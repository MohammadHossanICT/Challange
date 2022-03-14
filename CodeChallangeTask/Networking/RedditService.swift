//
//  RedditService.swift
//  RedditSwiftUIAsyncAwait
//
// 
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
