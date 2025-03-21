//
//  NoteRouter.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 19.03.2025.
//  
//

import Foundation
import UIKit

final class NoteRouter {
  weak var view: UIViewController?
  
  static func setupModule(text: String) -> MainViewController {
    let viewController = UIStoryboard.viewController(fromStoryboard: "Main") as! MainViewController
    let presenter = NotePresenter()
    let router = NoteRouter()
    let interactor = NoteInteractor()
    
    viewController.presenter =  presenter
    
    presenter.view = viewController
    presenter.router = router
    presenter.interactor = interactor
    
    router.view = viewController
    
    interactor.output = presenter
    
    return viewController
  }
}

extension NoteRouter: NoteWireframe {
  
}
