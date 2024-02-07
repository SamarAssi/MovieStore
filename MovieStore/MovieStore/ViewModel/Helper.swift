//
//  Helper.swift
//  MovieStore
//
//  Created by Samar Assi on 05/02/2024.
//

import Foundation

final class Helper {
    static var DefaultMovie = MovieModel(
        id: 1,
        url: "sample_url",
        name: "Sample Movie",
        type: "Type",
        language: "Language",
        genres: ["Genre"],
        status: .running,
        runtime: 120,
        averageRuntime: 120,
        premiered: "2022-01-31",
        ended: "2023-01-31",
        officialSite: "http://sample.com",
        schedule: MovieModel.Schedule(time: "20:00", days: [.monday]),
        rating: MovieModel.Rating(average: 8.5),
        weight: 1,
        network: MovieModel.Network(id: 1, name: "Sample Network", country: nil, officialSite: nil),
        webChannel: nil,
        dvdCountry: nil,
        externals: nil,
        image: MovieModel.ImageString(medium: "sample_image", original: nil),
        summary: "Sample Summary",
        updated: 1643654400,
        _links: nil
    )
    
    static func getRating(movie: MovieModel) -> String {
        let number = movie.rating?.average ?? 0
        return firstDecimalDigit(number: number)
    }
    
    static func firstDecimalDigit(number: Double) -> String {
        return String(format: "%.1f", number)
    }
}
