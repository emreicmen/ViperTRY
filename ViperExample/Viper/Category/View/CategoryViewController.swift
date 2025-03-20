//
//  CategoryViewController.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 19.03.2025.
//  
//

import Foundation
import UIKit

final class CategoryViewController: UIViewController {
  var presenter: CategoryPresentation!
  
  // MARK: Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    presenter.viewDidLoad()
  }
}

extension CategoryViewController: CategoryView {
  func updateUI() {
    //View'ı gğncelleyek. Veriyi basacak
  }
  
  
}
