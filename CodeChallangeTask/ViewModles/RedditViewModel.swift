//
//  RedditViewModel.swift
//  RedditSwiftUIAsyncAwait
//
//  
//

import Foundation

@MainActor
class RedditViewModel: ObservableObject {
    
    @Published private(set) var stories = [Story]()
    
    private var redditService: RedditService
    
    init(redditService: RedditService = RedditService()) {
        self.redditService = redditService
    }
    
    // Swift 5.5
    func fetchData() async {
        let url = NetworkURLs.urlBase
        do {
            let response = try await redditService.getModel(from: url)
            let stories = response.data.children.map { $0.data }
            
            self.stories = stories
            
            
        } catch (let error) {
            print(error)
        }
    }
}
