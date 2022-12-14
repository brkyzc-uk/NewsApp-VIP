//
//  NewsListViewController.swift
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

protocol NewsListDisplayLogic: AnyObject
{
  func displayFetchedNews(viewModel: NewsList.FetchNews.ViewModel)
  func displayNewsDetail()
}

class NewsListViewController: UIViewController, NewsListDisplayLogic, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        return cell
    }
    
    
  @IBOutlet weak var tableView: UITableView!
    
  var interactor: NewsListBusinessLogic?
  var router: (NSObjectProtocol & NewsListRoutingLogic & NewsListDataPassing)?

  // MARK: Object lifecycle
  
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    setup()
  }
  
  required init?(coder aDecoder: NSCoder)
  {
    super.init(coder: aDecoder)
    setup()
  }
  
  // MARK: Setup
  
  private func setup()
  {
    let viewController = self
    let interactor = NewsListInteractor()
    let presenter = NewsListPresenter()
    let router = NewsListRouter()
    viewController.interactor = interactor
    viewController.router = router
    interactor.presenter = presenter
    presenter.viewController = viewController
    router.viewController = viewController
    router.dataStore = interactor
  }
  
  // MARK: Routing
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?)
  {
    if let scene = segue.identifier {
      let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
      if let router = router, router.responds(to: selector) {
        router.perform(selector, with: segue)
      }
    }
  }
    
    
  
  // MARK: View lifecycle
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    fetchNews()
      self.navigationItem.title = "Top News"
      setupTableView()
      
  }
    
    private func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(NewsListTableViewCell.self)
    }
  
  // MARK: Fetch News
    
  var displayedNews: [NewsList.FetchNews.ViewModel.DisplayedNews] = []
  
  
  func fetchNews() {
    let request = NewsList.FetchNews.Request()
    interactor?.fetchNews(request: request)
  }
  
  func displayFetchedNews(viewModel: NewsList.FetchNews.ViewModel) {
      displayedNews = viewModel.displayedNews
      //tableView.reloadData()
  }
    
  func displayNewsDetail() {
      router?.routeToNewsDetail(segue: nil)
  }
}
