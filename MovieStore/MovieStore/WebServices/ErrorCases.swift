//
//  ErrorCases.swift
//  MovieStore
//
//  Created by Samar Assi on 04/02/2024.
//

import Foundation

enum ErrorCases: LocalizedError {
    case invalidURL
    case invalidResponse
    case invalidData
    
    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "Invalid URL"
        case .invalidResponse:
            return "Invalid Response"
        case .invalidData:
            return "Invalid Data"
        }
    }
}
