class RekeningBank {
  //Properties
  String? nama;
  int? noRek, saldo;

  //Method(Function)
  transfer() {
    print('Transfer');
  }

  ambilSaldo() {
    print('Ambil Saldo');
  }

  //Constructor
  RekeningBank(
      {this.nama, this.noRek, this.saldo}); //seperti argument pada func

  //Set and Get
  set setNama(String? namaNasabah) {
    this.nama = namaNasabah;
  }

  set setNoRek(int? noRekNasabah) {
    this.noRek = noRekNasabah;
  }

  String? get getNama {
    return nama;
  }

  int? get getNoRek {
    return noRek;
  }
}

void main() {
  //Tanpa Constructor
  RekeningBank rekeningFigo = new RekeningBank();

  rekeningFigo.nama = 'Figo';
  rekeningFigo.noRek = 1231234;
  rekeningFigo.saldo = 1000000;

  print(rekeningFigo.nama);
  print(rekeningFigo.noRek);
  print(rekeningFigo.saldo);

  print("");

  rekeningFigo.transfer();
  rekeningFigo.ambilSaldo();

  print("=====================================");

  //Dengan Constructor
  RekeningBank rekeningMiku =
      new RekeningBank(nama: "Hatsune Miku", noRek: 123132, saldo: 2000000);

  print(rekeningMiku.nama);
  print(rekeningMiku.noRek);
  print(rekeningMiku.saldo);

  rekeningMiku.setNama = 'Mikuu';
  print(rekeningMiku.getNama);

  print("=====================================");

  //Setter and Getter

  RekeningBank rekeningMadoka =
      new RekeningBank(nama: 'Madoka', noRek: 343434, saldo: 4000000);

  print(rekeningMadoka.nama);
  print(rekeningMadoka.noRek);

  rekeningMadoka.setNama = 'Kaname Madoka';
  rekeningMadoka.setNoRek = 123123;

  print("=====================================");

  print(rekeningMadoka.getNama);
  print(rekeningMadoka.getNoRek);
}
