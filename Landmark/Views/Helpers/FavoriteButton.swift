//
//  Untitled.swift
//  Landmark
//
//  Created by Oussema mouhib HICHRI on 24/08/2026.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    var body: some View {
        Text("Favorite")
        Button{
            isSet.toggle()
        } label: {
           Label("Toggle Favorite", systemImage: isSet ? "heart.fill" : "heart")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
