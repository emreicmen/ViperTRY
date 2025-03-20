//
//  NoteViewController.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 19.03.2025.
//  
//

import Foundation
import UIKit

final class NoteViewController: UIViewController {
  var presenter: NotePresentation!
  
  // MARK: Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    presenter.viewDidLoad()
  }
}

//extension NoteViewController: NoteView {
//  func showNote(notes: [Note]) {
//    print(notes)
//  }
//}
