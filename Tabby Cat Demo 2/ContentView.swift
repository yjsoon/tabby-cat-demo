//
//  ContentView.swift
//  Tabby Cat Demo 2
//
//  Created by YJ Soon on 6/9/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CatFactsView()
                .tabItem {
                    Label("Cat Facts", systemImage: "lightbulb")
                }
            CatImagesView()
                .tabItem {
                    Label("Cat Photos", systemImage: "photo")
                }
            CatBounceView()
                .tabItem {
                    Label("Bounce Cat", systemImage: "arrowshape.bounce.right")
                }
            CatGalleryView()
                .tabItem {
                    Image(systemName: "photo.stack")
                    Text("Cat Gallery")
                }
            CatIDView()
                .tabItem {
                    Label("Cat ID", systemImage: "viewfinder")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
