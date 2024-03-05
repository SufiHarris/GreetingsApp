//
//  ContentView.swift
//  GreetingsApp
//
//  Created by Mohammad Haris Sofi on 12/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [
                Color.blue,
                Color(red: 139 / 255, green: 80 / 255, blue: 240 / 255)
            ],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .opacity(0.4)
            .ignoresSafeArea()
            VStack (alignment : .leading) {
                TitleView()
                Spacer()
                GreetingsSection()
                Spacer()
                Spacer()
            }
            .padding(.horizontal)
        }
      
    }
}

#Preview {
    ContentView()
}
