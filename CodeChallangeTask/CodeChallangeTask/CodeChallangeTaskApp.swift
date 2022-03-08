//
//  CodeChallangeTaskApp.swift
//  CodeChallangeTask
//
//  Created by M A Hossan on 08/03/2022.
//

import SwiftUI

@main
struct CodeChallangeTaskApp: App {
    @StateObject private var viewModel = RedditViewModel()
     
     var body: some Scene {
         WindowGroup {
             ContentView()
                 .environmentObject(viewModel)
         }
     }
 }
