//
//  Interactor.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 14.03.2025.
//

import Foundation

protocol CategoryInteractorProtocol {
  func fetchCategories()
}

final class CategoryInteractor: CategoryInteractorProtocol {
  
  var presenter: CategoryPresenterProtocol?
  var categoryArray: [Category] = []
  
  
  func fetchCategories() {
    for categoryName in Category.allCases {
      categoryArray.append(Category(rawValue: categoryName.rawValue) ?? .sience)
    }
    presenter?.didFetchCategories(categoryArray)
  }

}
 
