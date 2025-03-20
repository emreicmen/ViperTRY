//
//  SummaryInteractor.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 19.03.2025.
//  
//

import Foundation

final class SummaryInteractor {
  weak var output: SummaryInteractorOutput?
  var noteManager: NoteManager?
}

extension SummaryInteractor: SummaryInteractorInput {
  func fetchNotes() {
    //1-Burada önce notların kendisi çekilecek.Sonrasında Presenter'a Output kullanarak taşınacak
    let noteArray = noteManager?.noteArray
    
    //2-Yukarıda çekilen veriyi Output'da yer alan metoda paramtere olarak verek prenseter'a pushluyoruz.Presenter Output'u miras aldığı için bu veri direkt miras aldığı yerlere de gider.
    output?.fetchedNotes(notes: noteArray!)
  }
}
