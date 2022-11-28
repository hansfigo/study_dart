/*
  Claudio Hans Figo
  29 October 2022

  Buat Program untuk Masukan Nama dan NIM 
  Lalu Output

  Study Case Map, List

*/
import 'dart:io';

List? mhs = [];

var userNama;
int? userNim;

late int jumlahData;
bool loop = true;

void main() {
  do {
    print("1. INPUT Data");
    print("2. OUTPUT Data");
    var menu = stdin.readLineSync();
    print('');

    if (menu == "1") {
      print('Masukan Jumlah Data');
      jumlahData = int.parse(stdin.readLineSync()!);
      print('');
      addData(jumlahData);
    } else if (menu == "2") {
      outputData();
    } else if (menu == "3") {
      outputData();
      print('Masukan Nomor Data Yang Anda Ingin Delete');
      var indexData = stdin.readLineSync();
      deleteData(indexData);
    }else {
      print('error');
      loop = false;
    }
  } while (loop == true);
}

void addData(int jumlahData) {
  for (var i = 0; i < jumlahData; i++) {
    //looping untuk Input Data sesuai Input User
    print('Masukan Nama :');
    userNama = stdin.readLineSync();
    print('Masukan NIM :');
    userNim = int.parse(stdin.readLineSync()!);
    mhs!.add({
      //add Data Map dengan Key Nama & Nim ke List mhs
      'Nama': userNama,
      'Nim': userNim
    });
    print('');
  }
}

void outputData() {
  for (var i = 0; i < mhs!.length; i++) {
    //Looping untuk Deteksi Banyaknya data pada List mhs
    Map x = mhs![i];  
    
    x.forEach((key, value) {
      int num = i+1;
      print('$num $key $value');
    });
    print('');
  }
}

void deleteData(var indexData){
    print('Yakin Dek Mau Delete?');

    
    
}
