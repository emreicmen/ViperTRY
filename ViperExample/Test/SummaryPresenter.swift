//
//  SummaryPresenter.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 19.03.2025.
//  
//

import Foundation

final class SummaryPresenter {
  var view: SummaryView?
  var router: SummaryWireframe!
  var interactor: SummaryInteractorInput!
}

extension SummaryPresenter: SummaryPresentation {
  func viewDidLoad() {
    //3- Interactor'dan veriyi istedik
    interactor.fetchNotes()
  }
}

extension SummaryPresenter: SummaryInteractorOutput {
  //4-Burada Interactor'da aldığımız note dizisini outputtaki metod altında pushluyoruz.
  //view'daki bu UI güncelleme metodu textView.text gibi tamamen UI işlemlerini yapar
  func fetchedNotes(notes: [Note]) {
    view?.showDatas(notes: notes)
  }
}
