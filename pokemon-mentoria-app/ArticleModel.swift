//
//  news.swift
//  pokemon-mentoria-app
//
//  Created by kamilla.antunes on 23/03/22.
//

/**
 
 Encodable: Swift -> JSON
 Decodable: JSON -> Swift
 
 **/

import Foundation

struct Article: Codable {
    let titulo: String
    let autor: String?
    
    enum CodingKeys : String, CodingKey {
        case titulo = "title"
        case autor = "author"
    }
}

struct Response: Codable {
    let noticias: [Article]
    
    enum CodingKeys : String, CodingKey {
        case noticias = "articles"
    }
}
