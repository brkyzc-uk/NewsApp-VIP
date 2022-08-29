//
//  NewsResponseModel.swift
//  NewsApp-VIP
//
//  Created by Burak YAZICI on 24/08/2022.
//

import Foundation

// MARK: - News
struct NewsResponseModel: Codable {
    
    var id: String?
    var urlToImage: String?
    var title: String?
    var articleDescription: String?
    var source: Source?
    var author: String?
    var url: String?
    var publishedAt: Date?
    var content: String?
}


// MARK: - Source
struct Source {
    var id: String?
    var name: String?
}
