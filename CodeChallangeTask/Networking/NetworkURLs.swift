//
//  NetworkURLs.swift
//  RedditSwiftUIAsyncAwait
//
//  Created by Christian Quicano on 3/3/22.
//

import Foundation

enum NetworkURLs {
    static let urlBase = "https://www.reddit.com/.json"
    static let keyAfter = "$AFTER_KEY"
    static let redditURL = "\(urlBase)?after=\(keyAfter)"
}
