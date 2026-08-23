//
//  LandmarkList.swift
//  Landmark
//
//  Created by Oussema mouhib HICHRI on 22/08/2026.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink{
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
                
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Detail")
        }
        
    }
}

#Preview {
    LandmarkList()
}
