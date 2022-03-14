//
//  FakeRedditService.swift
//  RedditSwiftUIAsyncAwaitProdTests
//
//  
//

import Foundation
@testable import CodeChallangeTask

class FakeRedditService: RedditService {
    
    typealias Model = RedditResponse
    var data: Data?
    var error: Error?
    
    override func getModel(from url: String) async throws -> Model {
        if let data = data {
            return try JSONDecoder().decode(Model.self, from: data)
        }
        throw error!
    }
    
}

