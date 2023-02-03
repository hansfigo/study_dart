import 'dart:io';

void main() {
  bool loop = true;

  print('Masukan Nama : ');
  var name = stdin.readLineSync();

  if (name!.contains(RegExp(r'[0-9]'))) {
    print('error');
  } else {
    print('Masukan Umur : ');
    var age = stdin.readLineSync();

    print(name);
    print(int.parse(age!));
  }
}
