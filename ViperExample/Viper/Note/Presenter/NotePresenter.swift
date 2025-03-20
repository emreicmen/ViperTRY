//
//  NotePresenter.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 19.03.2025.
//  
//

import Foundation

final class NotePresenter {
  var view: NoteView?
  var router: NoteWireframe!
  var interactor: NoteInteractorInput!
}

extension NotePresenter: NotePresentation {
  func viewDidLoad() {
    print("🚨 🚨 🚨 🚨 ")
    print("""
          2.ADIM
          ---VERİ ÇEKME İSTEĞİNİ INTERACTOR'A İLETME---
          Class: NotePresenter Inherited: Presentation Fonksiyon: didLoad İşlemde kullanılacak fonksyion: fetchNotes
          Burada interactorda  yer alan metoda(kullandığımız yapıda didLoad ismi.Başka da olabilir) didLoad metodunu oluşturduğumuz presenter objesini kullanarak çağırıyoruz
          """)
    print("""
          ℹ️ ℹ️ ℹ️ ℹ️
          interactor.fetchNotes
          Bu metod Controller'dan alınan isteği Presneter'a aktarır.
          Presenter -->> Interactor \n
          """)
    interactor.fetchNotes()
  }
}

extension NotePresenter: NoteInteractorOutput {
  func fetchedNotes(note: [Note]) {
    print("🚨 🚨 🚨 🚨 ")
    print("""
          5.ADIM
          ---INTERACTORDAN GELEN VERİYİ VİEW'A GÖNDERME---
          Class: NotePresenter Inherited: InteractorOutput Fonksiyon: fetchedNotes İşlemde kullanılacak fonksyion: showNote
          Burada interactordan aldığımız veriyi View'dan oluşturduğumuz objede yer alan fonksiyon ile View'a taşıyacağız.
          """)
    print("""
          ℹ️ ℹ️ ℹ️ ℹ️
          view.showNote
          Interactor'dan alınan veriyi UI'a basması için UI'a iletir.
          Presenter -->> UI(ViewController) \n
          """)
    view?.showNote(notes: note)
  }
}
