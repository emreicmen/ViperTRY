//
//  NoteInteractor.swift
//  ViperTRY
//
//  Created by EMRE İÇMEN on 17.03.2025.
//

import Foundation

protocol NoteInteractorProtocol {
  func fetchNotes()
//  func fetchNotesbyCategory(with category: Category) -> [Note]
}

final class NoteInteractor: NoteInteractorProtocol {
  
  var notePresenter: NotePresenterProtocol?
  var noteArray: [Note] = [
    Note(id: 1, category: .techonology, header: "Yeni iPhone Modeli", summary: "Apple, yeni iPhone modelini tanıttı.", date: Date(), note: "Apple, son etkinliğinde iPhone 15 modelini tanıttı. Yeni model, daha büyük ekran ve geliştirilmiş kamera özelliklerine sahip."),
    Note(id: 2, category: .techonology, header: "Yapay Zeka Devrimi", summary: "Yapay zekanın geleceği hakkında yeni bir rapor yayımlandı.", date: Date(), note: "Yeni yayımlanan rapor, yapay zekanın gelecekteki potansiyelini ve bunun endüstriler üzerindeki etkilerini ele alıyor."),
    Note(id: 3, category: .techonology, header: "5G Teknolojisi", summary: "5G ağlarının yayılmaya başlamasıyla birlikte hızda büyük bir artış bekleniyor.", date: Date(), note: "5G teknolojisi, internet hızlarını ve bağlantı kalitesini önemli ölçüde artıracak. Bu yeni ağlar, mobil cihazlar için daha hızlı internet bağlantısı sağlayacak."),
    Note(id: 4, category: .art, header: "Mona Lisa'nın Yeniden Sergilenmesi", summary: "Louvre Müzesi'nde Mona Lisa'nın yeni sergisi açıldı.", date: Date(), note: "Mona Lisa'nın sergisi, Louvre Müzesi'nde tekrar açıldı. Sanatseverler, ünlü eseri bir kez daha görme fırsatı bulacak."),
    Note(id: 5, category: .art, header: "Yenilikçi Modern Sanat Sergisi", summary: "Yeni bir modern sanat sergisi açıldı.", date: Date(), note: "Modern sanatın en son trendlerini keşfedeceğiniz bir sergi açıldı. Bu sergi, çağdaş sanatçıların çalışmalarını sergiliyor."),
    Note(id: 6, category: .art, header: "Ressam Picasso'nun Eserleri", summary: "Picasso'nun en ünlü eserleri bir arada sergileniyor.", date: Date(), note: "Pablo Picasso'nun başyapıtları, bir sergide bir araya getirildi. Sanatseverler, onun benzersiz tarzını daha yakından keşfedebilecek."),
    Note(id: 7, category: .sport, header: "Fenerbahçe Şampiyon Oldu", summary: "Fenerbahçe, Süper Lig şampiyonluğunu kazandı.", date: Date(), note: "Fenerbahçe, Süper Lig 2025 sezonunun şampiyonu oldu. Taraftarlar, stadyumda coşkulu bir kutlama gerçekleştirdi."),
    Note(id: 8, category: .sport, header: "NBA Finalleri Başlıyor", summary: "NBA finalleri bu hafta başlıyor.", date: Date(), note: "NBA finalleri, bu hafta heyecan verici maçlarla başlıyor. Birçok takım şampiyonluk için mücadele edecek."),
    Note(id: 9, category: .sport, header: "Olympiyat Oyunları 2028", summary: "2028 Olimpiyat Oyunları için hazırlıklar hızlandı.", date: Date(), note: "Los Angeles, 2028 Olimpiyat Oyunları'na ev sahipliği yapacak. Oyunlar için hazırlıklar ve altyapı çalışmaları devam ediyor."),
    Note(id: 10, category: .sience, header: "Yeni Dünya Dışı Yaşam İzleri", summary: "Mars'ta yeni yaşam izlerine rastlandı.", date: Date(), note: "Mars'ta yapılan yeni keşifler, gezegenin derinliklerinde yaşam izleri buldu. Bu, bilim dünyasında büyük heyecan yarattı."),
    Note(id: 11, category: .sience, header: "DNA Çözülmesi", summary: "Bilim insanları DNA'nın tam çözümünü gerçekleştirdi.", date: Date(), note: "DNA'nın çözülmesi, biyoloji alanındaki en büyük başarılarından biri olarak kabul ediliyor. Bu keşif, genetik mühendisliği için yeni bir dönemi başlatabilir."),
    Note(id: 12, category: .sience, header: "Kuantum Bilgisayarlar", summary: "Kuantum bilgisayarların gelişimi hızla ilerliyor.", date: Date(), note: "Kuantum bilgisayarlar, geleneksel bilgisayarlardan çok daha hızlı işlem yapabiliyor. Bu teknoloji, bir çok sektörde devrim yaratma potansiyeline sahip."),
    Note(id: 13, category: .nature, header: "Amazon Ormanları", summary: "Amazon ormanlarındaki biyolojik çeşitlilik tehdit altında.", date: Date(), note: "Amazon ormanları, dünyanın en büyük biyolojik çeşitliliğine sahip alanlardan biri. Ancak ormanlar, yok olma tehlikesiyle karşı karşıya."),
    Note(id: 14, category: .nature, header: "Küresel Isınma", summary: "Küresel ısınma, dünya genelinde büyük bir tehdit oluşturuyor.", date: Date(), note: "Küresel ısınma, okyanusların yükselmesine ve hava koşullarında aşırı değişimlere neden oluyor. Bu, tüm gezegen için kritik bir sorun haline gelmiş durumda."),
    Note(id: 15, category: .nature, header: "Yeni Korunan Doğa Alanları", summary: "Yeni doğa koruma alanları ilan edildi.", date: Date(), note: "Birçok yeni bölge, doğal yaşam alanlarını korumak için koruma altına alındı. Bu alanlar, biyolojik çeşitliliği koruma amacını güdüyor.")
  ]
  
  func fetchNotes() {
    notePresenter?.didFinishNotes(noteArray)
  }
  
//  func fetchNotesbyCategory(with category: Category) -> [Note] {
//    let filteredNotes = noteArray.filter { $0.category == category }
//    return filteredNotes
//  }
  
}
