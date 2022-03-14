//
//  RowView.swift
//  RedditSwiftUIAsyncAwait
//
// 
//

import SwiftUI

struct RowView: View {
    
    @EnvironmentObject var viewModel: RedditViewModel
    
    let title: String
    let comments: String
    let score: String
    let urlImage: String?
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                if let urlImage = urlImage, urlImage.contains("https"), let url = URL(string: urlImage) {
                    AsyncImage(url: url)
                }
                VStack(alignment: .leading) {
                    HeadTitleView(title: title)
                    Spacer()
                    Text("Comments: \(comments)")
                    Spacer()
                    Text("Score: \(score)")
                    Spacer()
                }
            }
            
        }
    }
}


