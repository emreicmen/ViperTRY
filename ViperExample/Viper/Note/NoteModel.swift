//
//  NoteModel.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 17.03.2025.
//

import Foundation

final class Note {
  
  var id: Int
  var category: Category
  var header: String
  var summary: String
  var date: Date
  var note: String
  
  init(id: Int, category: Category, header: String, summary: String, date: Date, note: String) {
    self.id = id
    self.category = category
    self.header = header
    self.summary = summary
    self.date = date
    self.note = note
    


  }
}
