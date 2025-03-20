//
//  ViperTRYRouter.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 18.03.2025.
//  
//

import Foundation
import UIKit

final class ViperTRYRouter {
  weak var view: UIViewController?
  
  static func setupModule() -> ViperTRYViewController {
    //StoryBoard Adını ile birlikte vererek o View'ı da tanıtmış oluyoruz. Ayrı as! kullanarak içindeki fonksiyonları kullanabiilmek için yapıyoruz.
    let viewController = UIStoryboard.viewController(fromStoryboard: "ViperTRY") as! ViperTRYViewController
    let presenter = ViperTRYPresenter()
    let router = ViperTRYRouter()
    let interactor = ViperTRYInteractor()
    
    viewController.presenter =  presenter
    
    presenter.view = viewController
    presenter.router = router
    presenter.interactor = interactor
    
    router.view = viewController
    
    interactor.output = presenter
    
    return viewController
  }
}

extension ViperTRYRouter: ViperTRYWireframe {
  
}
