//
//  NoteRouter.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 17.03.2025.
//

import Foundation
import UIKit

protocol NoteRouterProtocol {
  static func createModule() -> UIViewController
}

class NoteRouter: NoteRouterProtocol {
  static func createModule() -> UIViewController {
    let view = ViewController()
    let presenter = NotePresenter()
    let interactor = NoteInteractor()
    
    view.notePresenter = presenter
    presenter.view = view
    presenter.noteInteractor = interactor
    interactor.notePresenter = presenter
    
    return view
  }
}
