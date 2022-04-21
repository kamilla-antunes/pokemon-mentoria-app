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
    let tituloNoticia: String
    
    enum CodingKeys : String, CodingKey {
        case tituloNoticia = "title"
    }
}

struct Response: Codable {
    let noticias: [Article]
    
    enum CodingKeys : String, CodingKey {
        case noticias = "articles"
    }
}
