//
//  WebKitView.swift
//  SinglePage
//
//  Created by apple on 2022/10/16.
//

import SwiftUI
import WebKit

struct WebKitView: UIViewRepresentable {
    let request: URLRequest
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
}

struct WebKitView_Previews: PreviewProvider {
    static var previews: some View {
        WebKitView(request: URLRequest(url: URL(string: "https://www.qjidea.com/")!))
    }
}
