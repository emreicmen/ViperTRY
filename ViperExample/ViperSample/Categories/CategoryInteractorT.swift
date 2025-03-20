//
//  Interactor.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 14.03.2025.
//

import Foundation

protocol CategoryInteractorProtocolT {
  func fetchCategories()
}

final class CategoryInteractorT: CategoryInteractorProtocolT {
  
  var presenter: CategoryPresenterProtocolT?
  var categoryArray: [CategoryT] = []
  
  
  func fetchCategories() {
    for categoryName in CategoryT.allCases {
      categoryArray.append(CategoryT(rawValue: categoryName.rawValue) ?? .sport)
    }
    presenter?.didFetchCategories(categoryArray)
  }

}
 
