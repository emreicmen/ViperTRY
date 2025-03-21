//
//  CategoryRouter.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 20.03.2025.
//  
//

import Foundation
import UIKit

final class CategoryRouter {
  weak var view: UIViewController?
  
  static func setupModule() -> MainViewController {
    let viewController = UIStoryboard.viewController(fromStoryboard: "Main") as! MainViewController
    let categoryPresenter = CategoryPresenter()
    let categoryRouter = CategoryRouter()
    let categoryInteractor = CategoryInteractor()
    
    viewController.categoryPresenter = categoryPresenter
    
    categoryPresenter.view = viewController
    categoryPresenter.router = categoryRouter
    categoryPresenter.interactor = categoryInteractor
    
    categoryRouter.view = viewController
    
    categoryInteractor.output = categoryPresenter
    
    return viewController
  }
}

extension CategoryRouter: CategoryWireframe {
  
}
