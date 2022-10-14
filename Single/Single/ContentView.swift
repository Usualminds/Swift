//
//  ContentView.swift
//  Single
//
//  Created by apple on 2022/10/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("About Me")
                .font(.largeTitle)
                .fontWeight(.heavy).padding()
            
            Image("111")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(.yellow, style: StrokeStyle(lineWidth: 2))
                    )
            Text("Joe")
                .font(.title)
                .padding(20)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
