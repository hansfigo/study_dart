import 'dart:io';

void main() {
  double a;
  double b;
  String? op;
  String? loop = 'y';
  double res;

  print('Program Kalkulator Pakek Dart');

  while (loop == 'y') {
    print('Masukan Operator ( + - * /)');
    op = stdin.readLineSync();
    print('Masukan Angka ');
    a = double.parse(stdin.readLineSync()!);
    b = double.parse(stdin.readLineSync()!);
    switch (op) {
      case '+':
        res = Pejumlahan(a, b);
        print("Hasil = ${res}");
        break;
      case '-':
        res = Pejumlahan(a, b);
        print("Hasil = ${res}");
        break;
      case '*':
        res = Perkalian(a, b);
        print("Hasil = ${res}");
        break;
      case '/':
        res = Pembagian(a, b);
        print("Hasil = ${res}");
        break;
      default:
        print("Matamuuu");
    }
    print('Ulang? (Y/N)');
    loop = stdin.readLineSync();
  }
}

//Function Beb
Pejumlahan(double a, double b) {
  double hasil;
  return hasil = a + b;
}

Pengurangan(double a, double b) {
  double hasil;
  return hasil = a - b;
}

Perkalian(double a, double b) {
  double hasil;
  hasil = a * b;
  return hasil;
}

Pembagian(double a, double b) {
  double hasil;
  return hasil = (a / b);
}
