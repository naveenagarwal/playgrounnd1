//
//  Buttons.swift
//  PlayGround1 - Neumorphic Buttons
//
//  Created by Naveen on 26/07/21.
//

import SwiftUI

struct Buttons: View {
    var buttons = ["Button 1"]
    var body: some View {
        VStack {
            ForEach(buttons, id: \.self) { button in
                ButtonView(text: button)
                    .padding(30)
                    .tag(button)
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1.0)))
        .ignoresSafeArea(.all)
    }
}


struct ButtonView: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.system(size: 20, weight: .semibold, design: .rounded))
            .frame(width: 200, height: 60)
            .background(
                ZStack {
                    Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1.0))
                    RoundedRectangle(cornerRadius: 16, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .blur(radius: 4)
                        .offset(x: -8, y: -8)
                    
                    
                    RoundedRectangle(cornerRadius: 16, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
//                            .foregroundColor(Color(#colorLiteral(red: 0.7983121276, green: 0.8561424613, blue: 0.9666565061, alpha: 1)))
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1.0)), Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                        .blur(radius: 2)
                        .padding(2)
                    
                }
            )
            .clipShape(RoundedRectangle(cornerRadius: 16, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
            .shadow(color: Color(#colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1.0)), radius: 20, x: 20, y: 20)
            .shadow(color: Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), radius: 20, x: -20, y: -20)
    }
}

struct Buttons_Previews: PreviewProvider {
    static var previews: some View {
        Buttons()
    }
}
