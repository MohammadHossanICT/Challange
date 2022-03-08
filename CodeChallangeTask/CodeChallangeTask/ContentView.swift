//
//  ContentView.swift
//  CodeChallangeTask
//
//  Created by M A Hossan on 08/03/2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var viewModel: RedditViewModel
    
    var body: some View {
        
        VStack {
            Text("Reddit Service App")
                .font(.largeTitle)
            List {
                ForEach(viewModel.stories) { story in
                    // custom cell
                    RowView(title: story.title, comments: "\(story.numComments)", score: "\(story.score)", urlImage: story.thumbnail)
                }
            }
        }
        .onAppear {
            Task {
                await viewModel.fetchData()
            }
        }
            
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
