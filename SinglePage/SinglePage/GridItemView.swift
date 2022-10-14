//
//  GridItemView.swift
//  SinglePage
//
//  Created by apple on 2022/10/14.
//

import SwiftUI

struct GridItemView: View {
    let size: Double
    let item: Item
    
    var body: some View {
        ZStack {
            AsyncImage(url: item.url) { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
        }
    }
}

struct GridItemView_Previews: PreviewProvider {
    static var previews: some View {
        if let url = Bundle.main.url(forResource: "one", withExtension: "jpg") {
            GridItemView(size: 60, item: Item(url: url))
        }
        
    }
}
