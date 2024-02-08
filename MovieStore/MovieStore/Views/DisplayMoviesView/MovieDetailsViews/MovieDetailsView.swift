//
//  MovieDetailsView.swift
//  MovieStore
//
//  Created by Samar Assi on 06/02/2024.
//

import SwiftUI

struct MovieDetailsView: View {
    var movie: MovieModel
    @StateObject var viewModel = MovieListViewModel()
    @State var showSheet: Bool = true
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack {
            ZStack {
                BackgroundImage(movie: movie)
                    .environmentObject(viewModel)
                
                showSheetView
            }
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "arrow.left")
                        .foregroundStyle(Color.white)
                        .onTapGesture {
                            presentationMode.wrappedValue.dismiss()
                        }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "ellipsis")
                        .foregroundStyle(Color.white)
                }
            }
        }
    }
}

extension MovieDetailsView {
    var showSheetView: some View {
        VStack {
            if showSheet {
                GeometryReader { geometry in
                    withAnimation(.easeInOut) {
                        DetailsSheetView(movie: movie)
                            .padding(.top, geometry.size.height * 0.35)
                            .transition(.move(edge: .bottom))
                    }
                }
            } else {
                MainView()
            }
        }
    }
}

#Preview {
    MovieDetailsView(movie: Helper.DefaultMovie)
        .environmentObject(MovieListViewModel())
}
