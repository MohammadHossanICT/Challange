//
//  HeadTitleView.swift
//  RedditSwiftUIAsyncAwait
//
// 
//

import SwiftUI

struct HeadTitleView: View {
    
    @EnvironmentObject var viewModel: RedditViewModel
    let title: String
    
    var body: some View {
        Text("Title: \(title)")
    }
}

