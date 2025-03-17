//
//  Presenter.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 14.03.2025.
//

import Foundation

protocol PresenterProtocol {
  //Response olduğu için dönecek veri cinsi olabilir.
  func didFetchCategories(_ categories: [Category])
  func fetchCategories()
}

class Presenter: PresenterProtocol {
  var interactor: InteractorProtocol?
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
