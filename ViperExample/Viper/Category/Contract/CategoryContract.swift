//
//  CategoryContract.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 20.03.2025.
//  
//

import Foundation

protocol CategoryView {
  func showCategories(categories: [String])
}

protocol CategoryPresentation: AnyObject {
  func viewDidLoad()
}

protocol CategoryInteractorInput: AnyObject {
  func fetchCategories()
}

protocol CategoryInteractorOutput: AnyObject {
  func fetchedCategories(categories: [String])
}

protocol CategoryWireframe: AnyObject {
  
}
