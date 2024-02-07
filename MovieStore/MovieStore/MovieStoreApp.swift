//
//  MovieStoreApp.swift
//  MovieStore
//
//  Created by Samar Assi on 04/02/2024.
//

import SwiftUI

@main
struct MovieStoreApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(MovieListViewModel())
        }
    }
}
