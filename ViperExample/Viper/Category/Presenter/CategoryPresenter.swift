//
//  CategoryPresenter.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 20.03.2025.
//  
//

import Foundation

final class CategoryPresenter {
  var view: CategoryView?
  var router: CategoryWireframe!
  var interactor: CategoryInteractorInput!
}

extension CategoryPresenter: CategoryPresentation {
  func viewDidLoad() {
    interactor.fetchCategories()
  }
}

extension CategoryPresenter: CategoryInteractorOutput {
  func fetchedCategories(categories: [String]) {
    view?.showCategories(categories: categories)
  }
  
}
