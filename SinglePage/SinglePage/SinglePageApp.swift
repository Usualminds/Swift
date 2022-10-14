//
//  SinglePageApp.swift
//  SinglePage
//
//  Created by apple on 2022/10/14.
//

import SwiftUI

@main
struct SinglePageApp: App {
    @StateObject var dataSource = DataModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(dataSource)
                
        }
    }
}
