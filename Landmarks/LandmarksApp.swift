//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Shivansh Gupta on 13/08/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
