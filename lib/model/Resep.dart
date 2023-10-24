final class Resep{
  String Nama_Masakan = " ";
  String Deskripsi_Masakan = " ";
  String Cara_Membuat = " ";
  int Budget = 0;
  bool Verifikasi = true;

  void setNamaMasakan(String nama){
    Nama_Masakan = nama;
  }

  void setDeskripsiMasakan (String dekripsi){
    Deskripsi_Masakan = dekripsi;
  }

  void setCaraMembuat (String cara){
    Cara_Membuat = cara;
  }

  void setBudget (int budget){
    Budget = budget;
  }

  void setVerifikasi (bool verifikasi){
    Verifikasi = verifikasi;
  }

}