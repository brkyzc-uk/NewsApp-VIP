//
//  ServiceProtocol.swift
//  NewsApp-VIP
//
//  Created by Burak YAZICI on 28/08/2022.
//

import Foundation
protocol ServicesProtocol {
    func getTopHeadlines(completion: @escaping (Result<[NewsResponseModel]?>) -> Void)
}
