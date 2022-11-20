import 'dart:io';

void main() {
  //LIST = Menggunakan Index
  //Dimulai dari 0
  List<String> a = ['Madoka', 'Mami', 'Sayaka'];
  Map qw = {'x': 1, 'y': 2};
  Map we = {'q': 1, 'w': 2};
  
  List fnl = [qw, we];

  print(fnl);

  print(a);
  print('-----------------------------');

  //return list value pada index tertentu
  print(a[0]);
  print(a[1]);
  print(a[2]);
  print('-----------------------------');

  //list length
  print(a.length);
  print('-----------------------------');

  //Add data to list
  a.add('Homura');
  print(a.length);
  print(a);
  print('-----------------------------');

  //Merge List
  List<String> b = ['Kyouko', 'Iroha'];
  a.addAll(b);
  print(a);
  print('-----------------------------');

  //Urutkan List
  a.sort();
  print(a);
  print('-----------------------------');

  //reverse
  List<String> x = a.reversed.toList();
  print(x);
  print('-----------------------------');

  //delete List
  a.clear();
  print(a);
}
