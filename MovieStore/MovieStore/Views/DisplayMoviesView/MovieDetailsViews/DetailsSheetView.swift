//
//  DetailsSheetView.swift
//  MovieStore
//
//  Created by Samar Assi on 06/02/2024.
//

import SwiftUI

struct DetailsSheetView: View {
    var movie: MovieModel
    @State var doesSave: Bool = false
    @State var isRating: Bool = false

    var body: some View {
        RoundedTopBorder(cornerRadius: 25)
            .foregroundStyle(Color(CustomColorsName.whiteAndBlack))
            .ignoresSafeArea()
            .overlay {
                contentOfSheet
            }
    }
}

#Preview {
    DetailsSheetView(movie: Helper.DefaultMovie)
}
