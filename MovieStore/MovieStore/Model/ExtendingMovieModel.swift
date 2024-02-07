//
//  ExtendingMovieModel.swift
//  MovieStore
//
//  Created by Samar Assi on 04/02/2024.
//

import Foundation


extension MovieModel {
    enum Status: String, Codable {
        case ended = "Ended"
        case running = "Running"
        case toBeDetermined = "To Be Determined"
    }
    
    struct Schedule: Codable {
        let time: String?
        let days: [Day]?
        
        enum Day: String, Codable {
            case saturday = "Saturday"
            case sunday = "Sunday"
            case monday = "Monday"
            case tuesday = "Tuesday"
            case wednesday = "Wednesday"
            case thursday = "Thursday"
            case friday = "Friday"
        }
    }
    
    struct Country: Codable {
        let name: String?
        let code: String?
        let timezone: String?
    }
    
    struct Rating: Codable {
        let average: Double?
    }
    
    struct Network: Codable {
        let id: Int?
        let name: String?
        let country: Country?
        let officialSite: String?
    }
    
    struct Externals: Codable {
        let tvrage: Int?
        let thetvdb: Int?
        let imdb: String?
    }
    
    struct ImageString: Codable {
        let medium: String?
        let original: String?
    }
    
    struct Href: Codable {
        let href: String?
    }
    
    struct Links: Codable {
        let `self`: Href?
        let previousepisode: Href?
    }
}
