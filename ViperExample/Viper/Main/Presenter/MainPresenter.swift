//
//  MainPresenter.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 20.03.2025.
//  
//

import Foundation

final class MainPresenter {
  weak var view: MainView?
  var router: MainWireframe!
  var interactor: MainInteractorInput!
}

extension MainPresenter: MainPresentation {
  func viewDidLoad() {
    
  }
}

extension MainPresenter: MainInteractorOutput {
  
}
