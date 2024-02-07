//
//  MovieItem.swift
//  MovieStore
//
//  Created by Samar Assi on 04/02/2024.
//

import SwiftUI

struct MovieItem: View {
    var movie: MovieModel

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 20) {
                asyncImageSection
                textSection
            }
        }
    }
}

extension MovieItem {
    var asyncImageSection: some View {
        AsyncImage(url: URL(string: movie.image?.medium ?? "")) { image in
            image
                .resizable()
                .scaledToFill()
        } placeholder: {
            ProgressView()
        }
        .frame(width: 150, height: 200)
        .cornerRadius(10)
        .shadow(color: .gray.opacity(0.5), radius: 10, x: 0.0, y: 20)
    }
    
    var textSection: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text(movie.name ?? "")
                .font(.headline)
                .frame(width: 160, alignment: .leading)
                .foregroundStyle(Color.black)
            
            ratingSection
        }
    }
    
    var ratingSection: some View {
        HStack {
            Image(systemName: "star.fill")
                .foregroundStyle(.yellow)
                .font(.subheadline)
                .offset(y: -0.5)
            
            Text("\(Helper.getRating(movie: movie))/10 IMDb")
                .font(.subheadline)
                .tint(.secondary)
        }
    }
}

#Preview {
    return MovieItem(movie: Helper.DefaultMovie)
        .environmentObject(MovieListViewModel())
        .previewLayout(.sizeThatFits)
}
