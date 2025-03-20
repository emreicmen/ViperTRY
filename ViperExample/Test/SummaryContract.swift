//
//  SummaryContract.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 19.03.2025.
//  
//

import Foundation

protocol SummaryView {
  func showDatas(notes: [Note])
}

protocol SummaryPresentation: AnyObject {
  func viewDidLoad()
}

protocol SummaryInteractorInput: AnyObject {
  func fetchNotes()
}

protocol SummaryInteractorOutput: AnyObject {
  func fetchedNotes(notes: [Note])
}

protocol SummaryWireframe: AnyObject {
  
}
