class ClassesModel {
  String name, subname;
  bool isSelected;
  int? credit, pdfid;
  ClassesModel(
      this.name, this.subname, this.isSelected, this.credit, this.pdfid);
}

class AllLectures {
  static List<ClassesModel> lectures = [
    ClassesModel("Analiz 1", "", false, 5, 1422),
    ClassesModel("Programlama Dilleri I", "", false, 3, 1443),
    ClassesModel("Matematik Mühendisligine Giriş", "", false, 2, 1457),
    ClassesModel("Lineer Cebir", "", false, 4, 1490),
    ClassesModel("İş Sağlığı ve Güvenliği 1", "", false, 2, 9549),
    ClassesModel("Fizik 1", "", false, 4, 1820),
    ClassesModel("İleri İngilizce I", "", false, 3, 847),
    ClassesModel("Analiz 2", "", false, 5, 1492),
    ClassesModel("Programlama Dilleri II", "", false, 3, 1494),
    ClassesModel("İş Sağlığı ve Güvenliği 2", "", false, 2, 9550),
    ClassesModel("Finans Matematiğine Giriş", "", false, 3, 1497),
    ClassesModel("Soyut Matematik", "", false, 3, 1493),
    ClassesModel("Fizik 2", "", false, 4, 1904),
    ClassesModel("İleri İngilizce II", "", false, 3, 851),
    ClassesModel("İleri Analiz 1", "", false, 5, 1500),
    ClassesModel("Algoritmalar ve Veri Yapıları", "", false, 3, 1502),
    ClassesModel("Nümerik Analiz 1", "", false, 3, 1503),
    ClassesModel("Diferansiyel Denklemler", "", false, 5, 1504),
    ClassesModel("İngilizce Okuma ve Konuşma", "", false, 2, 1000),
    ClassesModel("Türkçe 1", "", false, 0, 200),
    ClassesModel("Sosyal Seçmeli 1-1", "", false, 3, null),
    ClassesModel("Bilgisayar Donanımı Stajı", "", false, 0, 5235),
    ClassesModel("İleri Analiz 2", "", false, 5, 1519),
    ClassesModel("Olasılık Teorisi", "", false, 3, 9551),
    ClassesModel("Veri Yönetimi ve Dosya Yapıları I", "", false, 3, 1521),
    ClassesModel("Analitik Geometri", "", false, 4, 1522),
    ClassesModel("Türkçe 2", "", false, 0, 578),
    ClassesModel("Lineer Programlama Teorisi", "", false, 3, 1523),
    ClassesModel("Mekanik I", "", false, 4, 1524),
    ClassesModel("Atatürk İlkeleri ve İnkılâp Tarihi I", "", false, 0, 5298),
    ClassesModel("İstatistik", "", false, 3, 9552),
    ClassesModel("Kısmi Diferansiyel Denklemler", "", false, 3, 1528),
    ClassesModel("Kompleks Analiz 1", "", false, 3, 1529),
    ClassesModel("Sorun Çözüm Teknikleri Stajı", "", false, 0, 5240),
    ClassesModel("Cebir", "", false, 3, 1542),
    ClassesModel("Atatürk İlkeleri ve İnkılâp Tarihi II", "", false, 0, 3299),
    ClassesModel("İş Hayatı için İngilizce", "", false, 2, 1014),
    ClassesModel("Yöneylem Araştırması", "", false, 3, 1571),
    ClassesModel("Matematik Müh. Tasarım Uygulamaları", "", false, 2, 1572),
    ClassesModel("Optimizasyon Teknikleri", "", false, 3, 1573),
    ClassesModel("Bitirme Çalışması", "", false, 4, 1574),
    ClassesModel("İntegral Denklemler", "Seçmeli 1", false, 3, 1608),
    ClassesModel("Fark denklemleri", "Seçmeli 1", false, 3, 1586),
    ClassesModel("Tansörel Analiz", "Seçmeli 1", false, 3, 1613),
    ClassesModel(
        "Sonlu Elemanlar Yöntemine Giriş", "Seçmeli 1", false, 3, 1610),
    ClassesModel("Ayrık Matematik", "Seçmeli 1", false, 3, 1527),
    ClassesModel("Yapay Zekaya Giriş", "Seçmeli 1", false, 3, 2000),
    ClassesModel("Tasarı Geometri", "Seçmeli 1", false, 3, 9553),
    ClassesModel("Analitik Mekanik", "Seçmeli 2", false, 3, 1614),
    ClassesModel("Özel Fonksiyonlar", "Seçmeli 2", false, 3, 1639),
    ClassesModel(
        "Veri Yönetimi ve Dosya Yapıları II", "Seçmeli 2", false, 3, 1645),
    ClassesModel("İntegral Dönüşümler", "Seçmeli 2", false, 3, 1618),
    ClassesModel("Matematik Lojik", "Seçmeli 2", false, 3, 1575),
    ClassesModel("Sigorta Matematiğine Giriş", "Seçmeli 3", false, 3, 1679),
    ClassesModel("İşletim Sistemleri", "Seçmeli 3", false, 3, 1678),
    ClassesModel("Bilgisayar Tasarımı", "Seçmeli 3", false, 3, 1668),
    ClassesModel("Bulanık Mantık", "Seçmeli 3", false, 3, 1670),
    ClassesModel("Çizge Kuramı ve Algoritmalar", "Seçmeli 3", false, 3, 9554),
    ClassesModel("Nümerik Analiz 2", "Seçmeli 4", false, 3, 1697),
    ClassesModel("Matematik Tarihi", "Seçmeli 4", false, 3, 1690),
    ClassesModel("Diferansiyel Geometri", "Seçmeli 4", false, 3, 1686),
    ClassesModel(
        "Pertürbasyon ve Asimptotik Yöntemler", "Seçmeli 4", false, 3, 1698),
    ClassesModel("Bilg. Des. Mat. Hesap.", "Seçmeli 4", false, 3, 1680),
    ClassesModel("Fourier Analizi", "Seçmeli 4", false, 3, 9555),
    ClassesModel("Varyasyonlar Hesabı", "Seçmeli 5", false, 3, 1711),
    ClassesModel("Yazılım Mühendisliği", "Seçmeli 5", false, 3, 1715),
    ClassesModel(
        "Adi Dif. Denk. Nümerik Çözümleri", "Seçmeli 5", false, 3, 1703),
    ClassesModel("Hata Düzelten Kodlara Giriş", "Seçmeli 5", false, 3, 1705),
    ClassesModel("Sistem Programlama", "Seçmeli 5", false, 3, 9556),
    ClassesModel("Matris Analizi", "Seçmeli 6", false, 3, 1721),
    ClassesModel("Simülasyon Teknikleri", "Seçmeli 6", false, 3, 1735),
    ClassesModel("Mekanik II", "Seçmeli 6", false, 3, 1724),
    ClassesModel("Zaman Serileri Analizi", "Seçmeli 6", false, 3, 1745),
    ClassesModel("MVC ile Web Programlama", "Seçmeli 6", false, 3, 9557),
    ClassesModel("Nesneye Yönelik Programlama", "Seçmeli 7", false, 3, 1763),
    ClassesModel("Sistem Analizi ve Dizayn", "Seçmeli 7", false, 3, 1765),
    ClassesModel("Dinamik", "Seçmeli 7", false, 3, 1753),
    ClassesModel("Proje Planlama ve Yönetimi", "Seçmeli 7", false, 3, 1764),
    ClassesModel("Mat. Müh. için Biomekanik", "Seçmeli 7", false, 3, 1750),
    ClassesModel(
        "Müh. Prob. Matematiksel Modellenmesi", "Seçmeli 8", false, 3, 1769),
    ClassesModel("Oyunlar Teorisine Giriş", "Seçmeli 8", false, 3, 1770),
    ClassesModel("Elastisite Teorisi", "Seçmeli 8", false, 3, 1767),
    ClassesModel("Kompleks Analiz 2", "Seçmeli 8", false, 3, 1768),
    ClassesModel(
        "Nesneye Yönelik İleri Programlama", "Seçmeli 8", false, 3, 9558),
    ClassesModel("Eşitsizlikler", "Seçmeli 9", false, 3, 1771),
    ClassesModel(
        "Haberleşme Teo. Matematiksel Yapısı", "Seçmeli 9", false, 3, 1757),
    ClassesModel("Veri Madenciliğine Giriş", "Seçmeli 9", false, 3, 1759),
    ClassesModel("Yapay Görü", "Seçmeli 9", false, 3, 1760),
    ClassesModel(
        "Reel ve Dual Kuat. Lineer Cebiri", "Seçmeli 9", false, 3, 9559),
    ClassesModel("Mobil Programlama", "Seçmeli 9", false, 3, 9560),
    ClassesModel("Fonksiyonel Analize Giriş", "Seçmeli 10", false, 3, 1966),
    ClassesModel("Şifrelemeye Giriş", "Seçmeli 10", false, 3, 1978),
    ClassesModel("Görsel programlama", "Seçmeli 10", false, 3, 1968),
    ClassesModel("Görüntü İşleme", "Seçmeli 10", false, 3, 1971),
    ClassesModel("Mesleki Terminoloji", "Seçmeli 10", false, 3, 1976),
    ClassesModel("Matematik Felsefesi", "Seçmeli 11", false, 3, 1986),
    ClassesModel(
        "Kısmi Dif. Denk. Nümerik Çözümleri", "Seçmeli 11", false, 3, 1983),
    ClassesModel("Bilişim Etiği", "Seçmeli 11", false, 3, 1982),
    ClassesModel("Web Programlama", "Seçmeli 11", false, 3, 1987),
    ClassesModel(
        "Mat. Müh. için Akışkanlar Mekaniği", "Seçmeli 11", false, 3, 1980),
    ClassesModel("Siber Güvenlik", "Seçmeli 11", false, 3, 9561),
    ClassesModel("Yapay Zeka", "Seçmeli 12", false, 3, 9562),
    ClassesModel(
        "Bilgisayar Tabanlı Öğrenen Sistemler", "Seçmeli 12", false, 3, 1994),
    ClassesModel("Veri haberleşmesi ve Network", "Seçmeli 12", false, 3, 1998),
    ClassesModel(
        "Bilgisayar Grafikleri ve Çoklu ortam", "Seçmeli 12", false, 3, 1993),
    ClassesModel("Uygulamalı SQL", "Seçmeli 12", false, 3, 9563),
  ];
}
