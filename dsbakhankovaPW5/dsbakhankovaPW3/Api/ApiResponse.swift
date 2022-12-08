//
//  ApiResponse.swift
//  dsbakhankovaPW3
//
//  Created by Dashbah on 08.12.2022.
//

import Foundation

struct ApiResponse: Codable {
    let articles: [Article]
}

struct Article: Codable {
    let source: Source
    let title: String
    let description: String?
    let url: String?
    let urlToImage: String?
    let publishedAt: String?
}

struct Source: Codable {
    let name: String
}
