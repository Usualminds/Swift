//
//  ContentView.swift
//  Single
//
//  Created by apple on 2022/10/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            BooksView()
                .tabItem{
                    Label("阅读", systemImage: "book")
                }
            AboutView()
                .tabItem{
                    Label("about", systemImage: "person")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
