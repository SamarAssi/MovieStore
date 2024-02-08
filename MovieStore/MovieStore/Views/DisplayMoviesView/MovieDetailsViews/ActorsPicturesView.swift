//
//  ActorsPicturesView.swift
//  MovieStore
//
//  Created by Samar Assi on 07/02/2024.
//

import SwiftUI

struct ActorsPicturesView: View {
    var body: some View {
        HStack {
            leo
            natalie
            robert
            tom
        }
    }
}

extension ActorsPicturesView {
    var leo: some View {
        VStack {
            Image(ActorsImagesStrings.leoImage)
                .resizable()
                .scaledToFit()
                .frame(width: 80)
                .cornerRadius(10)
            Text(ActorsNames.leo)
                .frame(width: 80)
        }
    }
    
    var natalie: some View {
        VStack {
            Image(ActorsImagesStrings.natalieImage)
                .resizable()
                .scaledToFit()
                .frame(width: 80)
                .cornerRadius(10)
            Text(ActorsNames.natalie)
                .frame(width: 80)
        }
    }
    
    var robert: some View {
        VStack {
            Image(ActorsImagesStrings.robertImage)
                .resizable()
                .scaledToFit()
                .frame(width: 80)
                .cornerRadius(10)
            Text(ActorsNames.robert)
                .frame(width: 80)
        }
    }
    
    var tom: some View {
        VStack {
            Image(ActorsImagesStrings.tomImage)
                .resizable()
                .scaledToFit()
                .frame(width: 80)
                .cornerRadius(10)
            Text(ActorsNames.tom)
                .frame(width: 80)
        }
    }
}

#Preview {
    ActorsPicturesView()
}
