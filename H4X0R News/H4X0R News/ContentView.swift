//
//  ContentView.swift
//  H4X0R News
//
//  Created by Mario Alvarado on 16/12/23.
//

import SwiftUI

struct ContentView: View {
    
    let configureNavBar = NavBarAppearance()
    
    var body: some View {
        NavigationStack {
            List(posts) { post in
                Text(post.title)
                    .listRowBackground(Color(red: 0.80, green: 0.52, blue: 0.95))
            }
            .navigationTitle("H4X0R News")
        }
        .onAppear {
            configureNavBar.navBarAppearance()
        }
    }
}

#Preview {
    ContentView()
}

struct Post: Identifiable {
    let id: String
    let title: String
}

let posts = [
    Post(id: "1", title: "Hello"),
    Post(id: "2", title: "Bonjour"),
    Post(id: "3", title: "Hola")
]
