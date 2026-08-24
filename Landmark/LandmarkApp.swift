//
//  LandmarkApp.swift
//  Landmark
//
//  Created by Oussema mouhib HICHRI on 21/08/2026.
//

import SwiftUI

@main
struct LandmarkApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
