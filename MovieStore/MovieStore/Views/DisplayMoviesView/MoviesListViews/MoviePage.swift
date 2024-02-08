//
//  MoviePage.swift
//  MovieStore
//
//  Created by Samar Assi on 05/02/2024.
//

import SwiftUI

struct MoviePage: View {
    @StateObject var viewModel = MovieListViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack {
                    HeadSectionView(sectionString: "Now Showing")
                        .padding(.top)
                        .padding(.trailing)
                    MoviesRowView()
                        .environmentObject(viewModel)
                    HeadSectionView(sectionString: "Popular")
                        .padding(.top)
                        .padding(.trailing)
                    MovieListView()
                        .environmentObject(viewModel)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    headerText
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "bell")
                }
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "list.dash")
                }
            }
            .padding(.leading)
        }
    }
    
    var headerText: some View {
        Text("FilmKU")
            .font(.title2)
            .fontWeight(.bold)
            .fontDesign(.serif)
    }
}

#Preview {
    MoviePage()
        .environmentObject(MovieListViewModel())
}
