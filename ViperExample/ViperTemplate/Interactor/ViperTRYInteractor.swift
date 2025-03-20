//
//  ViperTRYInteractor.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 18.03.2025.
//  
//

import Foundation

final class ViperTRYInteractor {
  //veriyi presentera gönderecek
  weak var output: ViperTRYInteractorOutput?
}
//isteği alacak
extension ViperTRYInteractor: ViperTRYInteractorInput {
  func getNotes() {
    
  }
}
