//
//  TimelineView.swift
//  PlayGround1
//
//  Created by Naveen on 28/07/21.
//

import SwiftUI

struct TimelineView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    TimeLineItem(text: item)
                    
                }
                
            }
            .padding(.top, 16)
            .background(Color(#colorLiteral(red: 0.9959332347, green: 0.9317399859, blue: 1, alpha: 0.4402879987)))
            .edgesIgnoringSafeArea(.bottom)
            .navigationTitle("Timeline View")
            
        }
    }
}

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView()
            
    }
}

struct TimeLineItem: View {
    
    var text: Int
    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: "keyboard")
                .resizable()
                .foregroundColor(.purple)
                .frame(width: 44, height: 44)
                .padding(.leading, 16)
            
            ZStack {
                GeometryReader { geometry in
                    Rectangle()
                        .frame(width: 17, height: 125, alignment: .center)
                        .foregroundColor(.blue)
                        .cornerRadius(10)
                    Circle()
                        .foregroundColor(.white)
                        .frame(width: 13, height: 14)
                        .padding(.all, 2)
                }
                .frame(width: 15, height: 100)
            }
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Hello User")
                Text("You have \(text) unread notifications")
                HStack {
                    Image(systemName: "text.bubble")
                        .resizable()
                        .frame(width: 28, height: 28)
                        .foregroundColor(.green)
                    Spacer()
                    Text("\(text) days ago")
                        .padding(.trailing, 10)
                }
                
            }
            
        }
    }
}
