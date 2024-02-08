//
//  ExtendingDetailsSheetView.swift
//  MovieStore
//
//  Created by Samar Assi on 06/02/2024.
//

import Foundation
import SwiftUI

extension DetailsSheetView {
    // MARK: Content of sheet
    var contentOfSheet: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 20) {
                nameAndSavedButtonSection
                ratingSection
                movieGenresSection
                
                HStack {
                    movieLengthSection
                    Spacer()
                    movieLanguageSection
                    Spacer()
                    ageRatingSection
                    Spacer()
                }
                .padding(.bottom)
                
                descriptionSection
                HeadSectionView(sectionString: "Cast")
                ActorsPicturesView()
            }
            .padding(20)
        }
    }
    
    // MARK: Name & Saved btn
    var nameAndSavedButtonSection: some View {
        HStack {
            Text(movie.name ?? "")
                .font(.title)
                .fontWeight(.bold)
                .fontDesign(.rounded)
            Spacer()
            Image(systemName: doesSave ? "bookmark.fill" : "bookmark")
                .font(.title2)
                .onTapGesture {
                    doesSave.toggle()
                }
        }
    }
    
    // MARK: Rating
    var ratingSection: some View {
        HStack {
            Image(systemName: isRating ? "star.fill" : "star")
                .font(.caption)
                .foregroundStyle(isRating ? Color.yellow : Color.gray)
                .offset(y: -0.5)
                .onTapGesture {
                    isRating.toggle()
                }
            Text("\(Helper.getRating(movie: movie))/10 IMDb")
                .font(.subheadline)
                .foregroundStyle(Color.secondary)
        }
    }
    
    // MARK: Genres
    var movieGenresSection: some View {
        HStack {
            ForEach(movie.genres ?? [], id: \.self) { genre in
                Text(genre.uppercased())
                    .font(.caption)
                    .padding(5)
                    .padding(.horizontal)
                    .foregroundStyle(Color(CustomColorsName.darkPeriwinkleColor))
                    .background(
                        RoundedRectangle(cornerRadius: 25.0)
                            .foregroundStyle(Color(CustomColorsName.periwinkleColor).opacity(0.6))
                    )
            }
        }
    }
    
    // MARK: Length of movie
    var movieLengthSection: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("Length")
                .foregroundStyle(Color.secondary)
            Text("1h 47min")
                .fontDesign(.rounded)
        }
        .font(.subheadline)
    }
    
    // MARK: Language
    var movieLanguageSection: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("Language")
                .foregroundStyle(Color.secondary)
            Text(movie.language ?? "English")
                .fontDesign(.rounded)
        }
        .font(.subheadline)
    }
    
    // MARK: Age rating
    var ageRatingSection: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("Rating")
                .foregroundStyle(Color.secondary)
            Text("PG-13")
                .fontDesign(.rounded)
        }
        .font(.subheadline)
    }
    
    // MARK: Description
    var descriptionSection: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Description")
                .font(.title2)
                .fontWeight(.bold)
                .fontDesign(.serif)
            Text(movie.summary ?? "")
                .fontDesign(.rounded)
                .foregroundStyle(Color.secondary)
        }
    }
}
