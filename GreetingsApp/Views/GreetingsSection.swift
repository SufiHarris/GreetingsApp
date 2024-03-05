//
//  GreetingsSection.swift
//  GreetingsApp
//
//  Created by Mohammad Haris Sofi on 12/02/24.
//

import SwiftUI

struct GreetingsSection: View {
    let greetings : [GreetingsDataModel] = [
        .init(title: "How are you?", color: .green) ,
        .init(title: "How is your family?", color: .gray),
        .init(title: "Nice to hear,  that every thing is fine :)", color: .blue),
        .init(title: "So , lets begin)", color: .yellow),
    ]
    var body: some View {
        VStack (alignment : .leading){
            ForEach(greetings) { greet in
                GreetingView(title: greet.title, color: greet.color)
            }
        }
    }
}

#Preview {
    GreetingsSection()
}
