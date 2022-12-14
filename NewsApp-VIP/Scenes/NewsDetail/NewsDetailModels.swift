//
//  NewsDetailModels.swift
//  NewsApp-VIP
//
//  Created by Burak YAZICI on 22/08/2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

enum NewsDetail {
  // MARK: Use cases
  
  enum FetchNews {
    struct Request {
        var id: String?
    }
    struct Response {
        var news: NewsResponseModel
    }
    struct ViewModel {
        struct DisplayedNews {
            var urlToImage: String?
            var title: String?
            var articleDescription: String?
        }
        var displayedNews: DisplayedNews
    }
  }
}
