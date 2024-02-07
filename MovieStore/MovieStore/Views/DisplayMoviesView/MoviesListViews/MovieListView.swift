//
//  MovieListView.swift
//  MovieStore
//
//  Created by Samar Assi on 04/02/2024.
//

import SwiftUI

struct MovieListView: View {
    @EnvironmentObject var movies: MovieListViewModel
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVStack(alignment: .leading) {
                ForEach(movies.movieList) { movie in
                    NavigationLink {
                        MovieDetailsView(movie: movie)
                            .toolbar(.hidden, for: .tabBar)
                    } label: {
                        MovieRow(movie: movie)
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
    MovieListView()
        .environmentObject(MovieListViewModel())
}
