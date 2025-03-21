//
//  MainRouter.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 20.03.2025.
//  
//

import Foundation
import UIKit

final class MainRouter {
  weak var view: UIViewController?
  
  static func setupModule() -> MainViewController {
    let viewController = UIStoryboard.viewController(fromStoryboard: "Main") as! MainViewController
    let mainPresenter = MainPresenter()
    let router = MainRouter()
    let interactor = MainInteractor()
    
    viewController.mainPresenter =  mainPresenter
    
    mainPresenter.view = viewController as! any MainView
    mainPresenter.router = router
    mainPresenter.interactor = interactor
    
    router.view = viewController
    
    interactor.output = mainPresenter
    
    return viewController
  }
}

extension MainRouter: MainWireframe {
  
}
