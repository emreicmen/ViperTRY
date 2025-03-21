//
//  SecondPresenter.swift
//  ViperTest
//
//  Created by EMRE İÇMEN on 20.03.2025.
//  
//

import Foundation

final class SecondPresenter {
  weak var view: SecondView?
  var router: SecondWireframe!
  var interactor: SecondInteractorInput!
}

extension SecondPresenter: SecondPresentation {
  func viewDidLoad() {
    interactor.fetchNotes()
  }
  
  func thirdButtonTapped() {
    router.routeToThirdScreen()
  }
}

extension SecondPresenter: SecondInteractorOutput {
  func fetchNotes(note: [Note]) {
    view?.showNote(note: note)
  }
}
