class ProfesorModel {
  String imageUrl;
  String name;
  String room;
  String phoneNumber;
  String email;
  String avesisUrl;

  ProfesorModel(
      {required this.name,
      required this.avesisUrl,
      required this.email,
      required this.imageUrl,
      required this.phoneNumber,
      required this.room});
}

class ProfesorInfos {
  static List<ProfesorModel> profesors = [
    ProfesorModel(
        avesisUrl: 'https://avesis.yildiz.edu.tr/tasci/',
        email: 'tasci@yildiz.edu.tr',
        imageUrl:
            'http://www.mtm.yildiz.edu.tr/media/images/personel/Dosya_000%20(1).jpeg',
        name: 'Prof. Dr. Fatih TAŞÇI',
        phoneNumber: '0212 383 45 90',
        room: 'A-245'),
    ProfesorModel(
        avesisUrl: 'https://avesis.yildiz.edu.tr/vkkaya',
        email: 'vkkaya@yildiz.edu.tr',
        imageUrl:
            'http://www.mtm.yildiz.edu.tr/media/images/personel/vatankarakaya.jpg',
        name: 'Prof. Dr. Vatan KARAKAYA',
        phoneNumber: '0212 383 46 21',
        room: 'A- 223'),
    ProfesorModel(
        avesisUrl: 'https://avesis.yildiz.edu.tr/nazmiye',
        email: 'nazmiye@yildiz.edu.tr',
        imageUrl:
            'http://www.mtm.yildiz.edu.tr/media/images/personel/nazmiyeyahnioglu.jpg',
        name: 'Prof. Dr. Nazmiye YAHNİOĞLU',
        phoneNumber: '0212 383 45 96',
        room: 'A- 232'),
    ProfesorModel(
        avesisUrl: 'https://avesis.yildiz.edu.tr/emir',
        email: 'emir@yildiz.edu.tr',
        imageUrl: 'http://www.mtm.yildiz.edu.tr/media/images/ibr.jpg',
        name: 'Prof. Dr. İbrahim EMİROĞLU',
        phoneNumber: '0212 383 45 95 ',
        room: 'A- 221'),
    ProfesorModel(
        avesisUrl: 'https://avesis.yildiz.edu.tr/hsahin',
        email: 'hsahin@yildiz.edu.tr',
        imageUrl:
            'http://www.mtm.yildiz.edu.tr/media/images/personel/hulyasahinturk.gif',
        name: 'Prof. Dr. Hülya ŞAHİNTÜRK',
        phoneNumber: '0212 383 46 04',
        room: 'A- 222'),
    ProfesorModel(
        avesisUrl: 'https://avesis.yildiz.edu.tr/faydin',
        email: 'faydin@yildiz.edu.tr',
        imageUrl:
            'http://www.mtm.yildiz.edu.tr/media/images/personel/fugenaydin.gif',
        name: 'Prof. Dr. Fügen Torunbalcı AYDIN',
        phoneNumber: '0212 383 46 00',
        room: 'A-233'),
    ProfesorModel(
        avesisUrl: 'https://avesis.yildiz.edu.tr/ibayrak',
        email: 'ibayrak@yildiz.edu.tr',
        imageUrl:
            'http://www.mtm.yildiz.edu.tr/media/images/personel/incibayrak.gif',
        name: 'Prof. Dr. İnci ALBAYRAK',
        phoneNumber: '0212 383 46 87',
        room: 'A-220'),
    ProfesorModel(
        avesisUrl: 'https://avesis.yildiz.edu.tr/sayli',
        email: 'sayli@yildiz.edu.tr',
        imageUrl:
            'http://www.mtm.yildiz.edu.tr/media/images/personel/aylasayli.jpg',
        name: 'Prof. Dr. Ayla ŞAYLI',
        phoneNumber: '0212 383 46 15',
        room: 'A-234'),
    ProfesorModel(
        avesisUrl: 'https://avesis.yildiz.edu.tr/asecer',
        email: 'asecer@yildiz.edu.tr ',
        imageUrl:
            'http://www.mtm.yildiz.edu.tr/media/images/personel/image%20(8).jpg',
        name: 'Prof. Dr. Aydın SECER',
        phoneNumber: '0212 383 46 22',
        room: 'A-243'),
    ProfesorModel(
        avesisUrl: 'https://avesis.yildiz.edu.tr/mkurulay',
        email: 'mkurulay@yildiz.edu.tr',
        imageUrl: 'http://www.mtm.yildiz.edu.tr/media/images/m%20kuru.jpg',
        name: 'Prof. Dr. Muhammet KURULAY',
        phoneNumber: ' 0212 383 45 98',
        room: 'A-235'),
    ProfesorModel(
        avesisUrl: 'https://avesis.yildiz.edu.tr/cguler',
        email: 'cguler@yildiz.edu.tr',
        imageUrl:
            'http://www.mtm.yildiz.edu.tr/media/images/personel/cguler2.gif',
        name: 'Prof. Dr. Coşkun GÜLER',
        phoneNumber: '0212 383 45 99',
        room: 'A-246'),
    ProfesorModel(
        avesisUrl: 'https://avesis.yildiz.edu.tr/kosker',
        email: 'kosker@yildiz.edu.tr',
        imageUrl:
            'http://www.mtm.yildiz.edu.tr/media/images/personel/resatkosker.jpg',
        name: 'Prof. Dr. Reşat KÖŞKER',
        phoneNumber: '0212 383 46 07',
        room: 'A-230'),
    ProfesorModel(
        avesisUrl: 'https://avesis.yildiz.edu.tr/ozkoklu',
        email: 'ozkoklu@yildiz.edu.tr',
        imageUrl:
            'http://www.mtm.yildiz.edu.tr/media/images/personel/kevserkoklu.JPG',
        name: 'Doç. Dr. Kevser Özden KÖKLÜ',
        phoneNumber: '0212 383 46 01',
        room: 'A-229'),
    ProfesorModel(
        avesisUrl: 'https://avesis.yildiz.edu.tr/fakgun',
        email: 'fakgun@yildiz.edu.tr',
        imageUrl:
            'http://www.mtm.yildiz.edu.tr/media/images/personel/image.png',
        name: 'Doç. Dr. Fatma Aydın AKGÜN',
        phoneNumber: '0212 383 46 06',
        room: 'A-236'),
    ProfesorModel(
        avesisUrl: 'https://avesis.yildiz.edu.tr/ubabuscu',
        email: 'ubabuscu@yildiz.edu.tr ',
        imageUrl:
            'http://www.mtm.yildiz.edu.tr/media/images/personel/ulkubabuscu.gif',
        name: 'Doç. Dr. Ülkü Babuşcu YEŞİL',
        phoneNumber: '0212 383 46 06',
        room: 'A- 236'),
    ProfesorModel(
        avesisUrl: 'https://avesis.yildiz.edu.tr/baslan',
        email: 'baslan@yildiz.edu.tr',
        imageUrl:
            'http://www.mtm.yildiz.edu.tr/media/images/personel/birolaslanyurek.jpg',
        name: 'Doç. Dr. Birol ASLANYÜREK',
        phoneNumber: '0212 383 46 08',
        room: 'A- 228'),
    ProfesorModel(
        avesisUrl: 'https://avesis.yildiz.edu.tr/hgonce',
        email: 'hgonce@yildiz.edu.tr',
        imageUrl:
            'http://www.mtm.yildiz.edu.tr/media/images/personel/halegonce.jpg',
        name: 'Doç. Dr. Hale Gonce KÖÇKEN',
        phoneNumber: '0212 383 46 05',
        room: 'A- 227'),
    ProfesorModel(
        avesisUrl: 'https://avesis.yildiz.edu.tr/ucan',
        email: 'ucan@yildiz.edu.tr',
        imageUrl:
            'http://www.mtm.yildiz.edu.tr/media/images/personel/yaseminucan.jpg',
        name: 'Doç. Dr. Yasemen UÇAN',
        phoneNumber: '0212 383 46 13',
        room: 'A- 220'),
    ProfesorModel(
        avesisUrl: 'https://avesis.yildiz.edu.tr/artur',
        email: 'artur@yildiz.edu.tr',
        imageUrl:
            'http://www.mtm.yildiz.edu.tr/media/images/personel/arzuturan.jpg',
        name: 'Doç. Dr. Arzu TURAN DİNCEL',
        phoneNumber: '0212 383 46 10',
        room: 'A-224'),
    ProfesorModel(
        avesisUrl: 'https://avesis.yildiz.edu.tr/ksimsek',
        email: 'ksimsek@yildiz.edu.tr',
        imageUrl:
            'http://www.mtm.yildiz.edu.tr/media/images/personel/kadriyesimsek.jpg',
        name: 'Doç. Dr. Kadriye Şimşek ALAN',
        phoneNumber: '0212 383 46 10',
        room: 'A- 224'),
    ProfesorModel(
        avesisUrl: 'https://avesis.yildiz.edu.tr/tramazan',
        email: 'tramazan@yildiz.edu.tr',
        imageUrl:
            'http://www.mtm.yildiz.edu.tr/media/images/personel/rtekercioglu.jpg',
        name: 'Doç. Dr. Ramazan TEKERCİOĞLU',
        phoneNumber: '0212 383 46 08',
        room: 'A-228'),
    ProfesorModel(
        avesisUrl: 'https://avesis.yildiz.edu.tr/ozisik',
        email: 'ozisik@yildiz.edu.tr',
        imageUrl:
            'http://www.mtm.yildiz.edu.tr/media/images/personel/muslimozisik.jpg',
        name: 'Dr. Öğr. Üyesi Müslüm ÖZIŞIK',
        phoneNumber: '0212 383 46 08',
        room: 'A-228'),
    ProfesorModel(
        avesisUrl: 'https://avesis.yildiz.edu.tr/guler',
        email: 'guler@yildiz.edu.tr',
        imageUrl:
            'http://www.mtm.yildiz.edu.tr/media/images/personel/nilgunguler.gif',
        name: 'Dr. Öğr. Üyesi Nilgün Güler BAYAZIT',
        phoneNumber: '0212 383 46 13',
        room: 'A-220'),
    ProfesorModel(
        avesisUrl: 'https://avesis.yildiz.edu.tr/mertbal',
        email: 'mertbal@yildiz.edu.tr',
        imageUrl:
            'http://www.mtm.yildiz.edu.tr/media/images/personel/image%20(4).jpg',
        name: 'Dr. Öğr. Üyesi Mert BAL',
        phoneNumber: '0212 383 46 12',
        room: 'A-220'),
    ProfesorModel(
        avesisUrl: 'https://avesis.yildiz.edu.tr/bibrahim',
        email: 'bibrahim@yildiz.edu.tr',
        imageUrl:
            'http://www.mtm.yildiz.edu.tr/media/images/personel/image%20(5).jpg',
        name: 'Dr. Öğr. Üyesi Bayram Ali İBRAHİMOĞLU',
        phoneNumber: '0212 383 46 14',
        room: 'A-225'),
    ProfesorModel(
        avesisUrl: 'https://avesis.yildiz.edu.tr/sonar',
        email: 'sonar@yildiz.edu.tr',
        imageUrl: 'http://www.mtm.yildiz.edu.tr/media/images/3165(2).jpg',
        name: 'Dr. Öğr. Üyesi Serkan ONAR',
        phoneNumber: '0212 383 46 14',
        room: 'A-225'),
  ];
}
