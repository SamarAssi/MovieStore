//
//  RoundedTopBorder.swift
//  MovieStore
//
//  Created by Samar Assi on 06/02/2024.
//

import Foundation
import SwiftUI

struct RoundedTopBorder: Shape {
    let cornerRadius: Double
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.minX + cornerRadius, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.maxX - cornerRadius, y: rect.minY))
            path.addQuadCurve(
                to: CGPoint(x: rect.maxX, y: rect.minY + cornerRadius),
                control: CGPoint(x: rect.maxX, y: rect.minY)
            )
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.minX, y: rect.minY + cornerRadius))
            path.addQuadCurve(
                to: CGPoint(x: rect.minX + cornerRadius, y: rect.minY),
                control: CGPoint(x: rect.minX, y: rect.minY)
            )
        }
    }
}
