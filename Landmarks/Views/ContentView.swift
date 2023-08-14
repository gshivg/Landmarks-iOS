//
//  ContentView.swift
//  Landmarks
//
//  Created by Shivansh Gupta on 13/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
