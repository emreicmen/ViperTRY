//
//  ViperTRYContract.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 18.03.2025.
//  
//

import Foundation
//Tüm protokollerin toplandığı yapı

//Veriyi UI'a basan
protocol ViperTRYView {
  func updateUI()
}
//presenter'dan alınan veriyi viewController'a taşıyan
protocol ViperTRYPresentation: AnyObject {
  func viewDidLoad()
  func viewDidAppear()
}
//isteği prenserter'dan alan
protocol ViperTRYInteractorInput: AnyObject {
  func getNotes()
}
//veriyi presentera gönderecek
protocol ViperTRYInteractorOutput: AnyObject {
  func gotNotes()
}

protocol ViperTRYWireframe: AnyObject {
  
}
