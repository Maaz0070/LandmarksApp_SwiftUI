//
//  ContentView.swift
//  Landmarks
//
//  Created by Maaz Adil on 1/18/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        CategoryHome()
            .tabItem {
                Label("Featured", systemImage: "star")
            }
            .tag(Tab.featured)
        
        LandmarkList()
            .tabItem {
                Label("List", systemImage: "list.bullet")
            }
            .tag(Tab.list)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
