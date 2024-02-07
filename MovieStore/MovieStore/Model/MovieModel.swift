//
//  MovieModel.swift
//  MovieStore
//
//  Created by Samar Assi on 04/02/2024.
//

import Foundation


struct MovieModel: Codable, Identifiable {
    let id: Int?
    let url: String?
    let name: String?
    let type: String?
    let language: String?
    let genres: [String]?
    let status: Status?
    let runtime: Int?
    let averageRuntime: Int?
    let premiered: String?
    let ended: String?
    let officialSite: String?
    let schedule: Schedule?
    let rating: Rating?
    let weight: Int?
    let network: Network?
    let webChannel: Network?
    let dvdCountry: Country?
    let externals: Externals?
    let image: ImageString?
    let summary: String?
    let updated: Int?
    let _links: Links?
}
