//
//  ViperTRYPresenter.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 18.03.2025.
//  
//

import Foundation

final class ViperTRYPresenter {
  var view: ViperTRYView?
  var router: ViperTRYWireframe!
  var interactor: ViperTRYInteractorInput!
}
//Veriyi view'a gönderen?
extension ViperTRYPresenter: ViperTRYPresentation {
  func viewDidLoad() {
    
  }
  
  func viewDidAppear() {
    
  }
}
//isteği alan?
extension ViperTRYPresenter: ViperTRYInteractorOutput {
  func gotNotes() {
    view?.updateUI()
  }
}
