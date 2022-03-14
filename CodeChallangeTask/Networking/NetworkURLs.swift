//
//  NetworkURLs.swift
//  RedditSwiftUIAsyncAwait
//
//  
//

import Foundation

enum NetworkURLs {
    static let urlBase = "https://www.reddit.com/.json"
    static let keyAfter = "$AFTER_KEY"
    static let redditURL = "\(urlBase)?after=\(keyAfter)"
}
