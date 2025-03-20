//
//  CategoryContract.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 19.03.2025.
//  
//

import Foundation

protocol CategoryView {
  func updateUI()
}

protocol CategoryPresentation: AnyObject {
  func viewDidLoad()
}

protocol CategoryInteractorInput: AnyObject {
  func getNotes()
}

protocol CategoryInteractorOutput: AnyObject {
  func getNotesCompleted()
}

protocol CategoryWireframe: AnyObject {
  
}
