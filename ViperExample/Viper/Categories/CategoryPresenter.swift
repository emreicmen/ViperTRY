//
//  Presenter.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 14.03.2025.
//

import Foundation

protocol CategoryPresenterProtocol {
  //Response olduğu için dönecek veri cinsi olabilir.
  func didFetchCategories(_ categories: [Category])
  func fetchCategories()
}

class CategoryPresenter: CategoryPresenterProtocol {
  var interactor: CategoryInteractorProtocol?
  var view: ViewControllerProtocol?
  
  //Request
  func fetchCategories() {
    interactor?.fetchCategories()
  }
  
  //Response
  func didFetchCategories(_ categories: [Category]) {
    view?.displayCategories(categories)
  }
  
  
}
