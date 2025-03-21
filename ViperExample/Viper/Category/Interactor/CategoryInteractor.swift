//
//  CategoryInteractor.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 20.03.2025.
//  
//

import Foundation

final class CategoryInteractor {
  weak var output: CategoryInteractorOutput?
  var categories: [String] = []
}

extension CategoryInteractor: CategoryInteractorInput {
  func fetchCategories() {
    let category = Category.allCases.map { $0.rawValue }
    categories = category
    
    output?.fetchedCategories(categories: categories)

  }
}
