//
//  Landmark.swift
//  Landmark
//
//  Created by Oussema mouhib HICHRI on 21/08/2026.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    let id: Int
    let name: String
    let park: String
    let state: String
    let description: String
    var isFavorite: Bool
    
    private var imageName: String
    var image: Image { Image(imageName) }
    
    private var coordinates: Coordinates
    var locationCoordinates: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    struct Coordinates: Codable, Hashable {
        let latitude: Double
        let longitude: Double
    }
}
