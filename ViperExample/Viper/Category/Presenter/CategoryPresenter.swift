//
//  CategoryPresenter.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 19.03.2025.
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
    
  }
}

extension CategoryPresenter: CategoryInteractorOutput {
  func getNotesCompleted() {
    //
  }
  
  
}
