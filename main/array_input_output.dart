import 'dart:io';

void main() {
  String? bool = 'y';

  List student = [];
  List matkul = [];
  List mainData = [student, matkul];

  while (bool == 'y') {
    print('PILIH MENU : ');
    print('1.INPUT DATA');
    print('2.OUTPUT DATA');
    var inout = int.parse(stdin.readLineSync()!);

    if (inout == 1) {
      //DATA 1
      print('Input Banyak Data : ');
      stdout.write('Nama : ');
      var name = stdin.readLineSync();
      stdout.write('Nim : ');
      var nim = int.parse(stdin.readLineSync()!);

      student.add({'name': name, 'nim': nim});

      //DATA 2
      print('Input Banyak Matkul : ');
      var jmlMatkul = int.parse(stdin.readLineSync()!);
      for (var i = 0; i < jmlMatkul; i++) {
        stdout.write('Matkul : ');
        var lesson = stdin.readLineSync();
        stdout.write('Nilai : ');
        var score = int.parse(stdin.readLineSync()!);

        matkul.add({'matkul': lesson, 'nilai': score});
      }

      print('Loop? Y/N ');
      bool = stdin.readLineSync();
    } else if (inout == 2) {
      if (student.isEmpty || matkul.isEmpty) {
        print('Data Kosong Masukan data dulu');
        print('Loop? Y/N ');
        bool = stdin.readLineSync();
      } else {
        var x = mainData[0];
        x.forEach((key, value) {
          stdout.write('$key :  $value \n');
        });
        print('Loop? Y/N ');
        bool = stdin.readLineSync();
      }
    }
  }

  //LOOPING
}
