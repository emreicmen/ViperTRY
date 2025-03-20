//
//  NoteInteractor.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 19.03.2025.
//  
//

import Foundation

final class NoteInteractor {
  weak var output: NoteInteractorOutput?
  var notes: [Note] = []
}

extension NoteInteractor: NoteInteractorInput {
  func fetchNotes() {
    print("🚨 🚨 🚨 🚨 ")
    print("""
          3.ADIM
          ---ENTİTY/MODEL'DAN VERİ ÇEKME---
          Class: NoteInteractorInput  Fonksiyon: fetchNotes  İşlemde kullanılacak fonksyion: veriyi çeken ana fonksiyon
          Entity ya da modelden veri çekme işlemini burada yapıyoruz.
          """)
    print("""
          ℹ️ ℹ️ ℹ️ ℹ️
          Veri çekme fonksyionu
          Veri çekme işlmelerini yapar. Database/Entity/Model/API herhanhi bir yerden alınacaj veriyi burada yaparız. 
          Interactor <<-->> DataResource  \n
          """)
    notes = NoteManager.shared.noteArray
    print("🚨 🚨 🚨 🚨 ")
    print("""
          4.ADIM
          ---ÇEKİLEN VERİYİ PRESENTER'A İLETME---
          Class: NoteInteractorInput  Fonksiyon: fetchNotes  İşlemde kullanılacak fonksyion: fetchedNotes
          Entity/Model'dan çektiğimiz veriyi NoteInteractorOutput içerisinde oluşturduğumuz metod ile miras aldığı yere yani Presenter'a gönderiyoruz.
          """)
    print("""
          ℹ️ ℹ️ ℹ️ ℹ️
          outpu.fetchedNotes
          Çekilen veriyi direkt olarak Interactor'a aktarmada görevlidir.. 
          Interactor -->> Presenter \n
          """)
    output?.fetchedNotes(note: notes)
  }
}
