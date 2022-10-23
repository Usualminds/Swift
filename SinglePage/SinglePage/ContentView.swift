//
//  ContentView.swift
//  Single
//
//  Created by Joe on 2022/10/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            TodoView()
                .tabItem{
                    Label("待办",systemImage: "checklist")
                }
            WebKitView(request: URLRequest(url: URL(string: "https://www.qjidea.com/")!))
                .tabItem{
                    Label("网页",systemImage: "network")
                }
            BooksView()
                .tabItem{
                    Label("阅读", systemImage: "book")
                }
            AboutView()
                .tabItem{
                    Label("我的", systemImage: "person")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
