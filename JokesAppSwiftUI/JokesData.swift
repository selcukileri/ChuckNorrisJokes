//
//  JokesData.swift
//  JokesAppSwiftUI
//
//  Created by Selçuk İleri on 9.11.2023.
//

import Foundation

struct Welcome: Identifiable, Codable {
    
    var id = UUID()
    let type: String
    let value: [Value]
    
    private enum CodingKeys: String, CodingKey {
            case type
            case value
        }
}

struct Value: Identifiable, Codable {
    let id: Int?
    let joke: String
    let categories: [String]
    
    private enum CodingKeys: String, CodingKey {
            case id
            case joke
            case categories
        }
}
