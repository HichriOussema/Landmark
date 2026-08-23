//
//  LandmarkList.swift
//  Landmark
//
//  Created by Oussema mouhib HICHRI on 22/08/2026.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoriteOnly = false
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoriteOnly || landmark.isFavorite)
        }
    }
    var body: some View {
        NavigationSplitView {
            List{
                Toggle(isOn: $showFavoriteOnly){
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink{
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Detail")
        }
        
    }
}

#Preview {
    LandmarkList()
}
