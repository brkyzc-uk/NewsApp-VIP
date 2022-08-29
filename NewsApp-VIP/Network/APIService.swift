//
//  APIService.swift
//  NewsApp-VIP
//
//  Created by Burak YAZICI on 28/08/2022.
//

import Foundation

class APIService: ServicesProtocol {
    func getTopHeadlines(completion: @escaping (Result<[NewsResponseModel]?>) -> Void) {
        guard let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=925dc7ab7ada46da884f6f8829288cc7") else {return}
        URLSession.shared.dataTask(with: url) { (data, response
            , error) in
            guard let data = data else { return }
            do {
                let decoder = JSONDecoder()
                let news = try decoder.decode(NewsResponseModel.self, from: data)
                completion(Result.success(news.self))
                
            } catch let err {
                print("Err", err)
            }
            }.resume()
    }
    
}
