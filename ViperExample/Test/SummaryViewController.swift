//
//  SummaryViewController.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 19.03.2025.
//  
//

import Foundation
import UIKit

final class SummaryViewController: UIViewController {
  var presenter: SummaryPresentation!
  
  // MARK: Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    //5-Presenter'daki didload altında isteği tetiklemesi için
    presenter.viewDidLoad()
  }
}

extension SummaryViewController: SummaryView {
  func showDatas(notes: [Note]) {
    //
  }
  


}
