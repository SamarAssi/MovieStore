//
//  MoviesRowView.swift
//  MovieStore
//
//  Created by Samar Assi on 04/02/2024.
//

import SwiftUI

struct MoviesRowView: View {
    @EnvironmentObject var movies: MovieListViewModel
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack{
                ForEach(movies.movieList) { movie in
                    NavigationLink {
                        MovieDetailsView(movie: movie)
                            .toolbar(.hidden, for: .tabBar)
                    } label: {
                        MovieItem(movie: movie)
                    }
                }
            }
        }
        .task {
            await movies.getMovies()
        }
    }
}

#Preview {
    MoviesRowView()
        .environmentObject(MovieListViewModel())
}
