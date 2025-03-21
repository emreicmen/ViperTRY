//
//  SecondViewController.swift
//  ViperTest
//
//  Created by EMRE İÇMEN on 20.03.2025.
//  
//

import Foundation
import UIKit

final class SecondViewController: BaseViewController {
  var presenter: SecondPresentation?
  
  // MARK: Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    presenter?.viewDidLoad()
  }
  @IBAction func thirdButtonTapped(_ sender: Any) {
    presenter?.thirdButtonTapped()
  }
}

extension SecondViewController: SecondView {
  func showNote(note: [Note]) {
    for notes in note {
      print(notes.summary)
    }
  }
}



