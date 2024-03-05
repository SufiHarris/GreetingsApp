//
//  GreetingView.swift
//  GreetingsApp
//
//  Created by Mohammad Haris Sofi on 12/02/24.
//

import SwiftUI

struct GreetingView: View {
    
    let title : String
   @State var color : Color
    
    let colors : [Color]  = [
        Color.red,
        Color.blue,
        Color.pink,
        Color.green,
        Color.orange,
        Color.purple,
        Color.gray,
        Color.black,
    ]
    
    var body: some View {
        Text( title )
            .font(.title3)
            .bold()
           .foregroundStyle(Color.white)
            .padding()
            .padding(.horizontal)
            .background(color.opacity(0.7))
            .cornerRadius(20.0)
            .shadow(color: color.opacity(0.4) , radius: 5 , x: 10 ,y : 10)
            .onTapGesture {
                color  = colors.randomElement() ?? .red
            }
    }
}

#Preview {
    GreetingView(title: "hello", color: .green)
}
