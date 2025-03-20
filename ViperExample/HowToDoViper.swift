//
//  ToDo.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 19.03.2025.
//

import Foundation

/*
 
 🚨 🚨 🚨 🚨
 1.ADIM
 ---VERİ ÇEKME İSTEĞİNİ PRESENTER'A İLETME---
 Class: ViewController  Fonksiyon: didLoad  İşlemde kullanılacak fonksyion: viewDidLoad
 Burada presenter'da yer alan metoda(kullandığımız yapıda didLoad ismi.Başka da olabilir) didLoad metodunu oluşturğumuz presenter objesini kullanarak çağırıyoruz.
 ℹ️ ℹ️ ℹ️ ℹ️
 presenter.viewDidload
 UI'dan alınacak etkileşim ile (örneğin buttona basma ya da sayfa yenileme) Presenter'a bu isteği iletmek
 UI -->> Presenter

 🚨 🚨 🚨 🚨
 2.ADIM
 ---VERİ ÇEKME İSTEĞİNİ INTERACTOR'A İLETME---
 Class: NotePresenter Inherited: Presentation Fonksiyon: didLoad İşlemde kullanılacak fonksyion: fetchNotes
 Burada interactorda  yer alan metoda(kullandığımız yapıda didLoad ismi.Başka da olabilir) didLoad metodunu oluşturduğumuz presenter objesini kullanarak çağırıyoruz
 ℹ️ ℹ️ ℹ️ ℹ️
 interactor.fetchNotes
 Bu metod Controller'dan alınan isteği Presneter'a aktarır.
 Presenter -->> Interactor

 🚨 🚨 🚨 🚨
 3.ADIM
 ---ENTİTY/MODEL'DAN VERİ ÇEKME---
 Class: NoteInteractorInput  Fonksiyon: fetchNotes  İşlemde kullanılacak fonksyion: veriyi çeken ana fonksiyon
 Entity ya da modelden veri çekme işlemini burada yapıyoruz.
 ℹ️ ℹ️ ℹ️ ℹ️
 Veri çekme fonksyionu
 Veri çekme işlmelerini yapar. Database/Entity/Model/API herhanhi bir yerden alınacaj veriyi burada yaparız.
 Interactor <<-->> DataResource

 🚨 🚨 🚨 🚨
 4.ADIM
 ---ÇEKİLEN VERİYİ PRESENTER'A İLETME---
 Class: NoteInteractorInput  Fonksiyon: fetchNotes  İşlemde kullanılacak fonksyion: fetchedNotes
 Entity/Model'dan çektiğimiz veriyi NoteInteractorOutput içerisinde oluşturduğumuz metod ile miras aldığı yere yani Presenter'a gönderiyoruz.
 ℹ️ ℹ️ ℹ️ ℹ️
 outpu.fetchedNotes
 Çekilen veriyi direkt olarak Interactor'a aktarmada görevlidir..
 Interactor -->> Presenter

 🚨 🚨 🚨 🚨
 5.ADIM
 ---INTERACTORDAN GELEN VERİYİ VİEW'A GÖNDERME---
 Class: NotePresenter Inherited: InteractorOutput Fonksiyon: fetchedNotes İşlemde kullanılacak fonksyion: showNote
 Burada interactordan aldığımız veriyi View'dan oluşturduğumuz objede yer alan fonksiyon ile View'a taşıyacağız.
 ℹ️ ℹ️ ℹ️ ℹ️
 view.showNote
 Interactor'dan alınan veriyi UI'a basması için UI'a iletir.
 Presenter -->> UI(ViewController)

 🚨 🚨 🚨 🚨
 6.ADIM
 ---ÇEKİLEN VERİYİ UI'DA GÖSTERME---
 Class: ViewController  Fonksiyon: showNote  İşlemde kullanılacak fonksyion: showNote
 Çektiğimiz veriyi NoteView'da yani Contractta yer alan UI ile ilgili olan fonksiyonu implemente ederek burada kullandık
 Buradaki işlemler tableView'a basma,texte bama gibi UI işlemleridir.
 ℹ️ ℹ️ ℹ️ ℹ️
 UI'da ilgili alana basma (örn: textView.text, tableView.cell.text
 Presenter'dan alnına veriyi ilgili alanlara basar. UILabeli TableView,TextView vs....

 */
