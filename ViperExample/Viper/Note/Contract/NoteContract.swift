//
//  NoteContract.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 19.03.2025.
//  
//

import Foundation

//MARK: - Presenter'dan gelen verileri UI'da basma
//  🛠️ 🛠️ 🛠️ Presenter ---->>>> UI
protocol NoteView {
  func showNote(notes: [Note])
}

//MARK: - ViewController'dan isteği almak
//  🛠️ 🛠️ 🛠️ UI ---->>>> Presenter
protocol NotePresentation: AnyObject {
  func viewDidLoad()
}

//MARK: - Veriyi ilgili yerden çekmek için
//  🛠️ 🛠️ 🛠️ Presenter ---->>>> Interactor
protocol NoteInteractorInput: AnyObject {
  func fetchNotes()
}

//MARK: - Çekilen veriyi Presenter'a göndermek
//  🛠️ 🛠️ 🛠️ Interactor ---->>>> Presenter
//  🛠️ 🛠️ 🛠️ Presenter ---->>>> UI
protocol NoteInteractorOutput: AnyObject {
  func fetchedNotes(note: [Note])
}

protocol NoteWireframe: AnyObject {
  
}
