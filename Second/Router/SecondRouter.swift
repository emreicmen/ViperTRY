//
//  SecondRouter.swift
//  ViperTest
//
//  Created by EMRE İÇMEN on 20.03.2025.
//  
//

import Foundation
import UIKit

final class SecondRouter {
  weak var view: UIViewController?
  
  static func setupModule() -> SecondViewController {
    let viewController = UIStoryboard.viewController(fromStoryboard: "Second") as! SecondViewController
    let SecondPresenter = SecondPresenter()
    let secondRouter = SecondRouter()
    let secondInteractor = SecondInteractor()
    
    viewController.presenter =  SecondPresenter
    
    SecondPresenter.view = viewController
    SecondPresenter.router = secondRouter
    SecondPresenter.interactor = secondInteractor
    
    secondRouter.view = viewController
    
    secondInteractor.output = SecondPresenter
    
    return viewController
  }
}

extension SecondRouter: SecondWireframe {
  func routeToThirdScreen() {
    let thirdViewcontroller = ThirdRouter.setupModule()
    view?.navigationController?.pushViewController(thirdViewcontroller, animated: true)
  }
  

}
