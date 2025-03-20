//
//  SummaryRouter.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 19.03.2025.
//  
//

import Foundation
import UIKit

final class SummaryRouter {
  weak var view: UIViewController?
  
  static func setupModule() -> SummaryViewController {
    let viewController = UIStoryboard.viewController(fromStoryboard: "Summary") as! SummaryViewController
    let presenter = SummaryPresenter()
    let router = SummaryRouter()
    let interactor = SummaryInteractor()
    
    viewController.presenter =  presenter
    
    presenter.view = viewController
    presenter.router = router
    presenter.interactor = interactor
    
    router.view = viewController
    
    interactor.output = presenter
    
    return viewController
  }
}

extension SummaryRouter: SummaryWireframe {
  
}
