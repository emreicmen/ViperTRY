//
//  CategoryViewController.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 20.03.2025.
//  
//

import Foundation
import UIKit

final class CategoryViewController: BaseViewController {
  var presenter: CategoryPresentation!
  
  // MARK: Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    presenter.viewDidLoad()
  }
}

extension CategoryViewController: CategoryView {
  
}
