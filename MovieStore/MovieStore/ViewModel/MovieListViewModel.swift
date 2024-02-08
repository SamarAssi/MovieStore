//
//  MovieListViewModel.swift
//  MovieStore
//
//  Created by Samar Assi on 04/02/2024.
//

import Foundation

@MainActor
final class MovieListViewModel: ObservableObject {
    @Published var movieList: [MovieModel] = []
    @Published var errorMessage: String?
    
    func getMovies() async {
        do {
            let movies = try await FetchMovieData.fetchMovieData()
            movieList = movies
        } catch(let error) {
            errorMessage = error.localizedDescription
        }
    }
}
