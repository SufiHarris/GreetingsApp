//
//  TitleView.swift
//  GreetingsApp
//
//  Created by Mohammad Haris Sofi on 12/02/24.
//

import SwiftUI

struct TitleView: View {
    
    @State var isRotated : Bool = false
    
    let diameter : CGFloat = 50
    var angle : Angle {
        isRotated ? Angle(degrees: 360) : .zero
    }
    
    @State var subTitle : String = "Welcome to this app : )"
    
    let subTitles : [String] = [
        "Welcome to this app : )" ,
        "Hope we will learn somehting new ;)",
        "Nice to meet you",
        "hustle is real",
    ]
    
    var circleGradiant : AngularGradient {
        AngularGradient.init(gradient:
                                Gradient(colors:
                                            [Color.red, Color.blue , Color.yellow ,Color.purple]),
                                center: .center, angle: .zero)
    }
    var body: some View {
        HStack {
            VStack (alignment: .leading) {
                Text("Assalamu Alaikum")
                    .font(.title)
                    .fontWeight(.semibold)
               
                Text(subTitle)
                    .font(.title2)
                    .fontWeight(.thin)
            }
            .onTapGesture {
                subTitle  = subTitles.randomElement() ?? "Welcome to this app : )"
            }
          
            Spacer()
            
            Circle()
                .stroke(circleGradiant , lineWidth : 15)
                .frame(width: diameter ,height:  diameter)
                .rotationEffect(angle)
                .onTapGesture {
                    withAnimation {
                        isRotated.toggle()
                    }
                }
        }
    }
}

#Preview {
    TitleView()
}
