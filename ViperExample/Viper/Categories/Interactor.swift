//
//  Interactor.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 14.03.2025.
//

import Foundation

protocol InteractorProtocol {
  func fetchCategories()
}

final class Interactor: InteractorProtocol {
  
  var presenter: PresenterProtocol?
  var categoryArray: [Category] = []
  
  
  func fetchCategories() {
    for categoryName in Category.allCases {
      categoryArray.append(Category(rawValue: categoryName.rawValue) ?? .sience)
    }
    presenter?.didFetchCategories(categoryArray)
  }

}
 
