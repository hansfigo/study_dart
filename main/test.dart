import 'dart:convert';
import 'dart:io';

class Person {
  var name = [];
  late int age;
}

List Fruit = [
  {'nama': 'Figo'},
  {'nama': 'Powaa'}
];

void main() {
  Fruit.add({'nama': 'Kobeni'});
  Map x = Fruit[2];
  x['Nim'] = '21';
  print(Fruit);

  x.forEach((key, value) {
    print(value);
  });
  // Person person = Person();
  // print("Masukan Jumlah Data");
  // int data = int.parse(stdin.readLineSync()!);

  // for (var i = 0; i < data; i++) {
  //   print('Masukan Nama :');
  //   person.name.add(stdin.readLineSync()!);
  //   // person.name[i] = stdin.readLineSync()!;
  // }
  // for (var j = 0; j < data; j++) {
  //   print(person.name[j]);
  // }
}
