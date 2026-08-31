//
//  LandmarkList.swift
//  Landmark
//
//  Created by Oussema mouhib HICHRI on 22/08/2026.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoriteOnly = false
    @State private var sortTrigger: Bool = false
    @State private var searchText: String = ""
    @Environment(ModelData.self) var modelData
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (showFavoriteCheck(landmark: landmark)) && ( showSearchCheck(landmark: landmark))
        }
    }
    
    func showFavoriteCheck(landmark: Landmark) -> Bool {
        (!showFavoriteOnly || landmark.isFavorite )
    }
    
    func showSearchCheck(landmark: Landmark) -> Bool {
        (searchText.isEmpty || landmark.name.localizedCaseInsensitiveContains(searchText))
    }
    
    func sortByname() -> [Landmark] {
        sortTrigger ? filteredLandmarks.sorted(by: {$0.name < $1.name}) : filteredLandmarks
    }
    
    var body: some View {
        NavigationSplitView {
            List{
                Toggle(isOn: $sortTrigger){
                    Text("Sort toggle")
                }
                Toggle(isOn: $showFavoriteOnly){
                    Text("Favorites only")
                }
                ForEach(sortByname()) { landmark in
                    NavigationLink{
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            
            .animation(.default, value: sortByname())
            .navigationTitle("Landmarks")
            .searchable(text: $searchText)
        } detail: {
            Text("Detail")
        }
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
