//
//  LaunchSerivice.swift
//  Landmark
//
//  Created by Oussema mouhib HICHRI on 14/09/2026.
//

import Foundation

struct LaunchListResponse: Decodable {
    let results: [Launch]
}

struct LaunchService {
    func fetchLaunches() async throws -> [Launch] {
        let url = URL(string: "https://ll.thespacedevs.com/2.2.0/launch/")!
        let (data, _) = try await URLSession.shared.data(from: url)
        let response = try JSONDecoder().decode(LaunchListResponse.self, from: data)
        return response.results
    }
}
