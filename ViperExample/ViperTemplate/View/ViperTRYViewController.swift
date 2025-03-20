//
//  ViperTRYViewController.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 18.03.2025.
//  
//

import Foundation
import UIKit

final class ViperTRYViewController: UIViewController {
  var presenter: ViperTRYPresentation!
  
  // MARK: Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    //Presenter'dan veriyi alır
    presenter.viewDidLoad()
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    presenter.viewDidAppear()
  }
}

//Veriyi gösterir?
extension ViperTRYViewController: ViperTRYView {
  func updateUI() {
    
  }
}
