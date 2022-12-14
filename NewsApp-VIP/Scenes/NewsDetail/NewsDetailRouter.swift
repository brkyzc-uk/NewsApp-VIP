//
//  NewsDetailRouter.swift
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

@objc protocol NewsDetailRoutingLogic {
}

protocol NewsDetailDataPassing {
  var dataStore: NewsDetailDataStore? { get }
}

class NewsDetailRouter: NSObject, NewsDetailRoutingLogic, NewsDetailDataPassing {
  weak var viewController: NewsDetailViewController?
  var dataStore: NewsDetailDataStore?
}
