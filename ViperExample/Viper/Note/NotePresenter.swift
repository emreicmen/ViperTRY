//
//  NotePresenter.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 17.03.2025.
//

import Foundation

protocol NotePresenterProtocol {
  func didFinishNotes(_ notes: [Note])
  func fetchNotes()
}

class NotePresenter: NotePresenterProtocol {
  var noteInteractor: NoteInteractorProtocol?
  var view: ViewControllerProtocol?
    
  func fetchNotes() {
    noteInteractor?.fetchNotes()
  }
  
  func didFinishNotes(_ notes: [Note]) {
    view?.displayNotes(notes)
  }
  
}
