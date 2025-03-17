//
//  ViewController.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 14.03.2025.
//

import UIKit


protocol ViewControllerProtocol: AnyObject {
  func displayCategories(_ categories: [Category])
  func displayNotes(_ notes: [Note])
}

class ViewController: UIViewController, ViewControllerProtocol {
  
  var presenter: CategoryPresenterProtocol?
  var categories: [Category] = []
  
  var notePresenter: NotePresenterProtocol?
  var notes: [Note] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
    //Request
    presenter?.fetchCategories()
    notePresenter?.fetchNotes()
  }
  
  //Response
  func displayCategories(_ categories: [Category]) {
    self.categories = categories
    for category in categories {
      print(category.rawValue)
    }
  }
  
  func displayNotes(_ notes: [Note]) {
    self.notes = notes
    for note in notes {
      print(note.note)
    }
  }
}

