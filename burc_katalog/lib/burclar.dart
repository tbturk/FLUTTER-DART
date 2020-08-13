class Burclar {
  String _burcAdi;
  String _burcTarihi;
  String _burcGenelOzellikleriBaslikleri;
  List<String> burcGenelOzellikleri;



  String _burcKatologuResim;
  String _burcGenelOzellikleriResim;

  Burclar(String ad,String tarih,String kResim,String gResim){
      this._burcAdi=ad;
      this._burcTarihi=tarih;
      this._burcKatologuResim=kResim;
      this._burcGenelOzellikleriResim =gResim;
  }



  String get burcGenelOzellikleriResim => _burcGenelOzellikleriResim;

  set burcGenelOzellikleriResim(String value) {
    _burcGenelOzellikleriResim = value;
  }

  String get burcKatologuResim => _burcKatologuResim;

  set burcKatologuResim(String value) {
    _burcKatologuResim = value;
  }

  String get burcGenelOzellikleriBaslikleri => _burcGenelOzellikleriBaslikleri;

  set burcGenelOzellikleriBaslikleri(String value) {
    _burcGenelOzellikleriBaslikleri = value;
  }

  String get burcTarihi => _burcTarihi;

  set burcTarihi(String value) {
    _burcTarihi = value;
  }

  String get burcAdi => _burcAdi;

  set burcAdi(String value) {
    _burcAdi = value;
  }
}