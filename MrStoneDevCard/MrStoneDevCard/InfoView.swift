//
//  InfoView.swift
//  MrStoneDevCard
//
//  Created by Mario Alvarado on 15/12/23.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundStyle(.green)
                Text(text)
                    .foregroundColor(Color("textColor"))
            })
            .padding()
    }
}

#Preview {
    InfoView(text: "Hello", imageName: "phone.fill")
        .previewLayout(.sizeThatFits)
}
