/*
  Claudio Hans Figo
  29 October 2022

  Buat Program untuk Masukan Nama dan NIM 
  Lalu Output

  Study Case Map, List

*/
import 'dart:convert';
import 'dart:io';

List? mhs = [];

var userNama;
int? userNim;


late int jumlahData;

void main() {
  print("1. INPUT Data");
  print("2. OUTPUT Data");
  var menu = stdin.readLineSync();

  if (menu == "1") {
    print('Masukan Jumlah Data');
    jumlahData = int.parse(stdin.readLineSync()!);
    addData(jumlahData);
  } else if (menu == "2") {
  } else {}
}

void addData(int jumlahData) {
  for (var i = 0; i < jumlahData; i++) {
    print('$i Masukan Nama :');
    userNama = stdin.readLineSync();
    print('$i Masukan NIM :');
    userNim = int.parse(stdin.readLineSync()!);
    mhs!.add({
      'Nama' :userNama,
      'Nim' : userNim
    });
  }
  for (var i = 0; i < mhs!.length; i++) {
    Map x= mhs![i];
    x.forEach((key, value) {
      print('$key $value');
    });
  }
}

void outputData() {}
