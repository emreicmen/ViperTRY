//
//  Presenter.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 14.03.2025.
//

import Foundation

protocol CategoryPresenterProtocolT {
  //Response olduğu için dönecek veri cinsi olabilir.
  func didFetchCategories(_ categories: [CategoryT])
  func fetchCategories()
}

class CategoryPresentertT: CategoryPresenterProtocolT {
  var interactor: CategoryInteractorProtocolT?
  var view: ViewControllerProtocolT?
  
  //Request
  func fetchCategories() {
    interactor?.fetchCategories()
  }
  
  //Response
  func didFetchCategories(_ categories: [CategoryT]) {
    view?.displayCategories(categories)
  }
  
  
}
