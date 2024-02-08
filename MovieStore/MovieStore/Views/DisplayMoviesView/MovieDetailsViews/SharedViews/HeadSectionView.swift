//
//  HeadSectionView.swift
//  MovieStore
//
//  Created by Samar Assi on 05/02/2024.
//

import SwiftUI

struct HeadSectionView: View {
    @State var sectionString: String
    
    var body: some View {
        VStack {
            HStack {
                textSection
                Spacer()
                seeMoreButton
            }
            .padding(.bottom)
        }
    }
}

extension HeadSectionView {
    var seeMoreButton: some View {
        Button {
            
        } label: {
            Text("See more")
                .font(.subheadline)
                .foregroundStyle(Color.secondary.opacity(0.5))
                .padding(5)
                .padding(.horizontal, 5)
        }
        .background(
            RoundedRectangle(cornerRadius: 25.0)
                .stroke(Color.secondary.opacity(0.5))
        )
    }
    
    var textSection: some View {
        Text(sectionString)
            .font(.title2)
            .fontWeight(.bold)
            .fontDesign(.serif)
    }
}

#Preview {
    HeadSectionView(sectionString: "Title Section")
}
