//
//  NewsDetailInteractor.swift
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

protocol NewsDetailBusinessLogic
{
  func fetchNews(request: NewsDetail.FetchNews.Request)
}

protocol NewsDetailDataStore
{
    var news: NewsResponseModel! { get set }
}

class NewsDetailInteractor: NewsDetailBusinessLogic, NewsDetailDataStore
    {
  
    
  var presenter: NewsDetailPresentationLogic?
  var worker: NewsDetailWorker?
  
    var news: NewsResponseModel!
  
  // MARK: Fetch News
  
  func fetchNews(request: NewsDetail.FetchNews.Request)
  {
    worker = NewsDetailWorker(service: APIService())
      var request = request
      request.id = news.id
      worker?.fetchNews(request: request, completion: {(news, error) in
          if let news = news {
              let response = NewsDetail.FetchNews.Response(news: news)
              presenter?.presentNews(response: response)
          }
      })
    

  }
}
