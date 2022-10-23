//
//  BooksView.swift
//  SinglePage
//
//  Created by apple on 2022/10/14.
//

import SwiftUI
import Foundation

struct Book:Identifiable {
    let id = UUID()
    let url: String
}

struct BooksView: View {
    private var books = [
        "one",
        "two",
        "three"
    ]
    
    @EnvironmentObject var dataModel: DataModel
    
    var body: some View {
        VStack {
                List(books,id: \.self) { book in
                    VStack() {
                        Text(book)
                            .font(.largeTitle)
                            .onTapGesture(perform: {
                                print(book)
                            })
                        Image(book)
                            .resizable()
                            .scaledToFit()
                    }
                    .padding()
                    Divider()
                }
            
        
        }
        .scrollDisabled(false)
    }
}

struct BooksView_Previews: PreviewProvider {
    static var previews: some View {
        BooksView().environmentObject(DataModel())
    }
}
