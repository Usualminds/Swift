//
//  File.swift
//  SinglePage
//
//  Created by apple on 2022/10/14.
//

import Foundation


struct Item: Identifiable {
    let url: URL
    let id = UUID()
}


class DataModel: ObservableObject {
    @Published var items:[Item] = []
    
    init() {
        if let bookDirectory = FileManager.default.documentDirectory {
            let urls = FileManager.default.getContentsOfDirectory(bookDirectory).filter { $0.isImage }
            print("bookDirectory", urls)
            print("urls", urls)

            for url in urls {
                let item = Item(url: url)
                items.append(item)
            }
        }
    }
    
    func add(_item: Item) {
        items.insert(_item, at:0)
    }
    
    func remove(item: Item){
        if let index = items.firstIndex(of: item) {
            items.remove(at: index)
            FileManager.default.removeItemFromDocumentDirectory(url: item.url)
        }
    }
}

/// define URL
extension URL {
    var isImage: Bool {
        let imageExtensions = ["jpg", "jpeg", "png", "gif"]
        
        return imageExtensions.contains(self.pathExtension)
    }
}

/// define Item
extension Item: Equatable {
    static func ==(lhs: Item, rhs: Item) -> Bool {
        return lhs.id == rhs.id && lhs.id == rhs.id
    }
}
