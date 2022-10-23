//
//  TodoView.swift
//  SinglePage
//
//  Created by apple on 2022/10/16.
//

import SwiftUI

struct TodoView: View {
    
    private var list: [Event] = [
        Event(symbol: "gift.fill",
              color: .red,
              title: "李雷的生日",
              date: Date(timeIntervalSinceNow: 60 * 60 * 24 * 365 * 1),
              tasks: [EventTask(text: "Guava kombucha"),
                      EventTask(text: "Paper cups and plates"),
                      EventTask(text: "Cheese plate"),
                      EventTask(text: "Party poppers"),
                     ]),
        Event(symbol: "theatermasks.fill",
              color: .yellow,
              title: "学习 IOS",
              date: Date(timeIntervalSinceNow: 60 * 60 * 24 * 365 * 0.5),
              tasks: [EventTask(text: "Buy new tux"),
                      EventTask(text: "Get tickets"),
                      EventTask(text: "Book a flight for Carmen"),
                         ]),
        Event(symbol: "facemask.fill",
              color: .indigo,
              title: "每天运动一小时",
              date: Date(timeIntervalSinceNow: 60 * 60 * 24 * 365 * 1.1),
              tasks: [EventTask(text: "Bring medical ID"),
                      EventTask(text: "Record heart rate data"),
                     ]),
    ]
    
    var body: some View {
        List {
            Section(content: {
                ForEach(list) { item in
                    NavigationLink {
                        
                    } label: {
                        EventRow(event: item)
                    }
                    .swipeActions{
                        Button {
                            // todo:
                        } label: {
                            Label("删除", systemImage: "trash")
                        }
                    }
                }
            }, header: {
                Text("最近待办")
                    .font(.title3)
                    .foregroundColor(.secondary)
                    .fontWeight(.bold)
            })
        }
        .navigationTitle("待办事项列表")
        .toolbar {
            ToolbarItem {
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

struct TodoView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TodoView()
        }
    }
}
