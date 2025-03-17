//
//  Router.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 14.03.2025.
//

import Foundation
import UIKit

protocol RouterProtocol {
  static func createModule() -> UIViewController
}

class Router: RouterProtocol {
  static func createModule() -> UIViewController {
    let view = ViewController()
    let presenter = Presenter()
    let interactor = Interactor()
    
    view.presenter = presenter
    presenter.view = view
    presenter.interactor = interactor
    interactor.presenter = presenter
    
    return view
  }
}
