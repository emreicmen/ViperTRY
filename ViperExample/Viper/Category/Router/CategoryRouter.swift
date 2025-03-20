//
//  CategoryRouter.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 19.03.2025.
//  
//

import Foundation
import UIKit

final class CategoryRouter {
  weak var view: UIViewController?
  
  static func setupModule() -> CategoryViewController {
    let viewController = UIStoryboard.viewController(fromStoryboard: "Category") as! CategoryViewController
    let presenter = CategoryPresenter()
    let router = CategoryRouter()
    let interactor = CategoryInteractor()
    
    viewController.presenter =  presenter
    
    presenter.view = viewController
    presenter.router = router
    presenter.interactor = interactor
    
    router.view = viewController
    
    interactor.output = presenter
    
    return viewController
  }
}

extension CategoryRouter: CategoryWireframe {
  
}
