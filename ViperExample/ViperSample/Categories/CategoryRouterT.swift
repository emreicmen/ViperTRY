//
//  Router.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 14.03.2025.
//

import Foundation
import UIKit

protocol CategoryRouterProtocol {
  static func createModule() -> UIViewController
}

class CategoryRoutert: CategoryRouterProtocol {
  static func createModule() -> UIViewController {
    let view = ViewController()
    let presenter = CategoryPresentertT()
    let interactor = CategoryInteractor()
    
    view.presenter = presenter
    presenter.view = view
    presenter.interactor = interactor
    interactor.presenter = presenter
    
    return view
  }
}
