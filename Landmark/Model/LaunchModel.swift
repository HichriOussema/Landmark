//
//  LanchModel.swift
//  Landmark
//
//  Created by Oussema mouhib HICHRI on 07/09/2026.
//

import Foundation

struct LaunchStatus: Decodable {
    let name: String
}

struct Launch: Decodable, Identifiable {
    let id: String
    let name: String
    let net: String
    let image: String?
    let status: LaunchStatus
}
