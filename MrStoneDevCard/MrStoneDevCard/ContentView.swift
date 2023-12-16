//
//  ContentView.swift
//  MrStoneDevCard
//
//  Created by Mario Alvarado on 15/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.56, green: 0.27, blue: 0.68)
                .ignoresSafeArea()
            VStack {
                Image("mario")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 180.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5))
                
                Text("Mario Alvarado")
                    .font(Font.custom("Caveat-Regular", size: 50))
                    .bold()
                    .foregroundStyle(.white)
                
                Text("iOS Developer")
                    .foregroundStyle(.white)
                    .font(.system(size: 25))
                
                Divider()
                
                InfoView(text: "+52 618 123 4567", imageName: "phone.fill")
                InfoView(text: "mario.alvarado.isw@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

#Preview {
    ContentView()
}
