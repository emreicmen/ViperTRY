//
//  SecondInteractor.swift
//  ViperTest
//
//  Created by EMRE İÇMEN on 20.03.2025.
//  
//

import Foundation

final class SecondInteractor: BaseInteractor {
  weak var output: SecondInteractorOutput?
  var notes: [Note] = []
}

extension SecondInteractor: SecondInteractorInput {
  func fetchNotes() {
    notes = NoteManager.shared.noteArray
    output?.fetchNotes(note: notes)
  }
  
  
}
