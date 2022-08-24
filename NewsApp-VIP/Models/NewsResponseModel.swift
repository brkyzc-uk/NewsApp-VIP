//
//  NewsResponseModel.swift
//  NewsApp-VIP
//
//  Created by Burak YAZICI on 24/08/2022.
//

import Foundation

// MARK: - GameDetail
struct GameDetail {
    
    var status: String?
    var totalResults: Int?
    var articles: [Article]?
}

// MARK: - Article
struct Article {
    
    var source: Source?
    var author: String?
    var title: String?
    var articleDescription: String?
    var url: String?
    var urlToImage: String?
    var publishedAt: Date?
    var content: String?
}

// MARK: - Source
struct Source {
    var id: String?
    var name: String?
}
