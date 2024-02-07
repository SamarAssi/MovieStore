//
//  MovieRow.swift
//  MovieStore
//
//  Created by Samar Assi on 05/02/2024.
//

import SwiftUI

struct MovieRow: View {
    var movie: MovieModel
    
    var body: some View {
        NavigationStack {
            HStack(spacing: 15) {
                asyncImageSection
                
                VStack(alignment: .leading, spacing: 10) {
                    movieNameSection
                    ratingSection
                    movieGenreSection
                    timeSection
                    Spacer()
                }
            }
        }
    }
}

extension MovieRow {
    var asyncImageSection: some View {
        AsyncImage(url: URL(string: movie.image?.medium ?? "")) { image in
            image
                .resizable()
                .scaledToFill()
        } placeholder: {
            ProgressView()
        }
        .frame(width: 100, height: 160)
        .cornerRadius(10) 
    }
    var movieNameSection: some View {
        Text(movie.name ?? "")
            .font(.headline)
            .frame(width: 200, alignment: .leading)
            .foregroundStyle(Color.black)
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
    
    var movieGenreSection: some View {
        HStack {
            ForEach(movie.genres ?? [], id: \.self) { genre in
                Text(genre.uppercased())
                    .padding(5)
                    .font(.caption2)
                    .fontDesign(.rounded)
                    .foregroundStyle(Color(CustomColorsName.darkPeriwinkleColor))
                    .background(
                        RoundedRectangle(cornerRadius: 25.0)
                            .foregroundStyle(Color(CustomColorsName.periwinkleColor).opacity(0.6))
                            
                    )
            }
        }
    }
    
    var timeSection: some View {
        HStack {
            Image(systemName: "clock")
            Text("1h 47m")
                .font(.subheadline)
                .fontDesign(.serif)
                .offset(y: 0.5)
        }
        .foregroundStyle(Color.black)
    }
}

#Preview {
    MovieRow(movie: Helper.DefaultMovie)
}
