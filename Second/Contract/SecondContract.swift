//
//  SecondContract.swift
//  ViperTest
//
//  Created by EMRE İÇMEN on 20.03.2025.
//  
//

import Foundation

protocol SecondView: BaseView {
  func showNote(note: [Note])
}

protocol SecondPresentation: AnyObject {
  func viewDidLoad()
  func thirdButtonTapped()
}

protocol SecondInteractorInput: AnyObject {
  func fetchNotes()
}

protocol SecondInteractorOutput: AnyObject {
  func fetchNotes(note: [Note])
}

protocol SecondWireframe: AnyObject {
  func routeToThirdScreen()
}
