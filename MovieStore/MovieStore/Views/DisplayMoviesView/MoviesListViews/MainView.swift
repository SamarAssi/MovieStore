//
//  MainView.swift
//  MovieStore
//
//  Created by Samar Assi on 05/02/2024.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MovieListViewModel()
    @State var selectedTab = Tab.movies
    
    var body: some View {
        TabView(selection: $selectedTab) {
            MoviePage()
                .tabItem {
                    Image(systemName: "film")
                }
                .tag(Tab.movies)

            Text("Ticket")
                .tabItem {
                    Image(systemName: "ticket")
                }
                .tag(Tab.ticket)
            
            Text("Saved movies")
                .tabItem {
                    Image(systemName: "bookmark")
                }
                .tag(Tab.saved)
        }
    }
}

extension MainView {
    enum Tab {
        case movies
        case ticket
        case saved
    }
}

#Preview {
    MainView()
}
