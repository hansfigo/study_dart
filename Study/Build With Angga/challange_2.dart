/* 
Challange 2 
1.Buat formula untuk menghitung luas persegi
2.Buat formula untuk menghitung luas lingkaran
3.Buat formula untuk menghitung volume balok
*/
import 'dart:io';

void main() {
  print('Pilih Formula');
  print('1.Luas Persegi');
  print('2.Luas Lingkaran');
  print('3.Volume Balok');
  var x = stdin.readLineSync();

  switch (x) {
    case '1':
      print('Masukan Sisi :');
      var s = double.parse(stdin.readLineSync()!);
      var res = persegi(s);
      print('Luas Persegi = $res');
      break;
    case '2':
      print('Masukan Jari-Jari : ');
      var r = double.parse(stdin.readLineSync()!);
      var res = cirle(r);
      print('Luas lingkaran = $res');
      break;
    case '3':
      print('Masukan Panjang');
      var p = double.parse(stdin.readLineSync()!);
      print('Masukan Lebar');
      var l = double.parse(stdin.readLineSync()!);
      print('Masukan Tinggi');
      var t = double.parse(stdin.readLineSync()!);
      var res = kubus(p, l, t);
      print('Volume Kubus = $res');
      break;
    default:
  }
}

double persegi(double s) {
  var x = s * s;
  return x;
}

double cirle(double r) {
  var x = 3.14 * r * 0.5;
  return x;
}

double kubus(double p, l, t) {
  var x = p * l * t;
  return x;
}
