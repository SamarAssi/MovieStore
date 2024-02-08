//
//  BackgroundImage.swift
//  MovieStore
//
//  Created by Samar Assi on 06/02/2024.
//

import SwiftUI

struct BackgroundImage: View {
    var movie: MovieModel
    
    var body: some View {
        asyncImage
    }
}

extension BackgroundImage {
    var asyncImage: some View {
        AsyncImage(url: URL(string: movie.image?.original ?? "")) { image in
            image
                .resizable()
        } placeholder: {
            ProgressView()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundImage(movie: Helper.DefaultMovie)
}
