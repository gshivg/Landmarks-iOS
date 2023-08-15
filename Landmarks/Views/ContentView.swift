//
//  ContentView.swift
//  Landmarks
//
//  Created by Shivansh Gupta on 13/08/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView (selection: $selection) {
            CategoryHome()
                .tabItem{
                    Label("Featured", systemImage: "star")
                    
                }
                .tag(Tab.featured)
            
            LandmarkView()
                .tabItem{
                    Label("List", systemImage: "list.bullet")
                    
                }
                .tag(Tab.list)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
