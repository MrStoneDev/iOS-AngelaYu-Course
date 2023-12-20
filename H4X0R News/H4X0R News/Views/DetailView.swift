//
//  DetailView.swift
//  H4X0R News
//
//  Created by Mario Alvarado on 17/12/23.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.google.com")
}
