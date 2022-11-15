/* 
Challage 1 
1.Buatlah variable dari data dibawah sesuai dengan tipe datanya
2.Buatlah sebuah map yang beriksikan data dibawah 
  menggunakan variabel yang telah dibuat
3.Print Map tersebut

Data Restoran 
==================
Nama : Maid Cafe
Tahun Didirikan : 2022
Pemilik : Figo Mager
Alamat : Yogyakarta
Telepon : 0895363145976
Status Buka : Buka (Buka/Tutup)
Daftar Makanan :
  -Cake (20K)
  -Omurice (15k)
Daftar Minuman :
  -Ice tea (5k)
  -Kohee (8L)
*/

import 'dart:ffi';
import 'dart:io';
import 'dart:convert';
import 'dart:math';

void main() {
  // Deklarasi Variable
  Map mainData = {
    'Nama': 'Maid Cafe',
    'Tahun': 2022,
    'Pemilik': 'Figo Mager',
    'Alamat': 'Yogyakarta',
    'No Telp': 0895363145976,
    'Status': 'Open',
  };

  List<Map<String, dynamic>> food = [
    {'name': 'Omurice', 'price': 15000},
    {'name': 'Shooto Cake', 'price': 20000}
  ];

  List beverages = [
    {'name': 'Ice Tea', 'price': 5000},
    {'name': 'Kohee', 'price': 8000}
  ];

  print('Data Restoran');
  print('========================');

  mainData.forEach((key, value) {
    stdout.write('$key :  $value \n');
  });

  print('');

  stdout.write('Daftar Makanan : \n');
  for (int i = 0; i < food.length; i++) {
    var x = food[i];
    var nama = x['name'];
    var harga = x['price'];
    stdout.write('$nama ($harga) \n');
  }
  print('');
  print('Daftar Minuman : ');
  for (var i = 0; i < beverages.length; i++) {
    var x = beverages[i];
    var nama = x['name'];
    var harga = x['price'];
    stdout.writeln('$nama ($harga)');
  }

  
}
