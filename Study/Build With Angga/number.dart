void main() {
  num a = 12;
  int b = 12;
  double c = 12.6;
  double d = 12.613214;


  //untuk cek tipe data
  print(a.runtimeType);

  //pembulatan Double Terdekat 
  print(c.round());

  //pembulatan Double keatas
  print(c.ceil());

  //pembulatan Double kebawah
  print(c.floor());

  //integer to Double
  print(a.toDouble().runtimeType);

  //double to integer
  print(c.toInt().runtimeType);

  //Mengubah ke String
  //menampilkan berapa angka dibelakang koma
  print(d.toStringAsFixed(2));

  //menampilkan beraka angka dari awal
  print(d.toStringAsPrecision(3));
}

