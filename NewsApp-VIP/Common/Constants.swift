//
//  Constants.swift
//  NewsApp-VIP
//
//  Created by Burak YAZICI on 23/08/2022.
//

import Foundation

struct Constants {
    static let baseURL = "https://newsapi.org/v2/top-headlines?"
    static let country = "country=us&"
    static let apiKey = "925dc7ab7ada46da884f6f8829288cc7"
}

//The header fields
enum HttpHeaderField: String {
    case contentType = "Content-Type"
}

//The content type (JSON)
enum ContentType: String {
    case json = "application/json"
}



