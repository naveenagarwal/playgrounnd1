//
//  ContentView.swift
//  PlayGround1
//
//  Created by Naveen on 26/07/21.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = "Cards"
    var body: some View {
        
        NavigationView {
            TabView(selection: $selection) {
                TabView1()
                    .tabItem { Text("Tab 1") }
                    .tag("Cards")
                
                
                Text("Tab 2")
                    .padding()
                    .tabItem { Text("Tab 2") }
                    .tag("Me")
                
                Buttons()
                    .padding()
                    .tabItem { Text("Tab 3") }
                    .tag("Buttons")
            }
        }
        .navigationBarHidden(true)
        .navigationBarTitle(self.selection)
    }
}

struct TabView1: View {
    var body: some View {
        VStack {
            NavigationLink(destination: TestView()) {
                Text("Go to next")
            }
        }
    }
}

struct TestView: View {
    var body: some View {
        ZStack {
            Color(.brown)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Text("Shouldn't show tabs")
                
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
