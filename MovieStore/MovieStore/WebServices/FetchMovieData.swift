//
//  FetchMovieData.swift
//  MovieStore
//
//  Created by Samar Assi on 04/02/2024.
//

import Foundation

final class FetchMovieData {
    static func fetchMovieData() async throws -> [MovieModel] {
        let urlString = "https://api.tvmaze.com/shows"
        
        guard let url = URL(string: urlString) else {
            throw ErrorCases.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let responseURL = response as? HTTPURLResponse, responseURL.statusCode == 200 else  {
            throw ErrorCases.invalidResponse
        }
        
        do {
            let decoder = JSONDecoder()
            
            return try decoder.decode([MovieModel].self, from: data)
        } catch {
            throw ErrorCases.invalidData
        }
    }
}
