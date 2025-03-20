//
//  ViewController.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 14.03.2025.
//

import UIKit

class ViewController: UIViewController {
  var presenter: NotePresentation?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print("🚨 🚨 🚨 🚨 ")
    print("""
          1.ADIM
          ---VERİ ÇEKME İSTEĞİNİ PRESENTER'A İLETME---
          Class: ViewController  Fonksiyon: didLoad  İşlemde kullanılacak fonksyion: viewDidLoad
          Burada presenter'da yer alan metoda(kullandığımız yapıda didLoad ismi.Başka da olabilir) didLoad metodunu oluşturğumuz presenter objesini kullanarak çağırıyoruz.
          """)
    print("""
          ℹ️ ℹ️ ℹ️ ℹ️
          presenter.viewDidload
          UI'dan alınacak etkileşim ile (örneğin buttona basma ya da sayfa yenileme) Presenter'a bu isteği iletmek
          UI -->> Presenter \n
          """)
    presenter?.viewDidLoad()
  }
}


extension ViewController: NoteView {
  func showNote(notes: [Note]) {
    print("🚨 🚨 🚨 🚨 ")
    print("""
          6.ADIM
          ---ÇEKİLEN VERİYİ UI'DA GÖSTERME---
          Class: ViewController  Fonksiyon: showNote  İşlemde kullanılacak fonksyion: showNote
          Çektiğimiz veriyi NoteView'da yani Contractta yer alan UI ile ilgili olan fonksiyonu implemente ederek burada kullandık
          Buradaki işlemler tableView'a basma,texte bama gibi UI işlemleridir.
          """)
    print("""
          ℹ️ ℹ️ ℹ️ ℹ️
          UI'da ilgili alana basma (örn: textView.text, tableView.cell.text
          Presenter'dan alnına veriyi ilgili alanlara basar. UILabeli TableView,TextView vs.... \n
          """)
    print(notes.count)
  }

}
