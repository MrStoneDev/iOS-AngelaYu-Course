//
//  ContentView.swift
//  H4X0R News
//
//  Created by Mario Alvarado on 16/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    let configureNavBar = NavBarAppearance()
    
    var body: some View {
        NavigationStack {
            Spacer()
            List(networkManager.posts) { post in
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
                .listRowBackground(Color("listColor"))
            }
            .navigationTitle("H4X0R News")
        }
        .onAppear {
            configureNavBar.navBarAppearance()
            networkManager.fetchData()
        }
    }
}

#Preview {
    ContentView()
}
