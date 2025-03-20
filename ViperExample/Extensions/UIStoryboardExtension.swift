//
//  UIStoryboard.swift
//  Faar
//
//  Created by EMRE İÇMEN on 5.03.2025.
//

import Foundation
import UIKit

extension UIStoryboard {
  static func viewController<T: UIViewController>(fromStoryboard storyboardName: String) -> T {
    guard Bundle.main.path(forResource: storyboardName, ofType: "storyboardc") != nil else {
      let message = "\n🚨 Storyboard \"\(storyboardName)\" not found.\n"
      debugPrint(message)
      fatalError(message)
    }
    
    let storyboard = UIStoryboard(name: storyboardName, bundle: .main)
    
    guard let viewController = storyboard.instantiateInitialViewController() as? T else {
      let message = "\n🚨 View controller \"\(String(describing: T.self))\" not set as \"InitialViewController\".\n👨‍🏫 It can be set from stroyboard.\n"
      debugPrint(message)
      fatalError(message)
    }
    
    return viewController
  }
}
