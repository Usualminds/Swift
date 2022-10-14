//
//  AboutView.swift
//  Single
//
//  Created by apple on 2022/10/14.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack {
            Text("About Me")
                .font(.largeTitle)
                .fontWeight(.heavy).padding()
            
            Image("avatar")
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

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
