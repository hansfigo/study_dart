 void main(List<String> args) {
    var nama = 'a,b,x';
    String x = 'Halo';
    //Merubah String menjadi List/Array
    print(nama.split(','));

    //Merubah String menjadi Uppercase/Kapital
    print(nama.toUpperCase());

    //Merubah String menjadi Lowercase/kecil
    print(nama.toLowerCase());

    //Mengecheck apakah string mengandung apa, dan return value ke boolean
    print(nama.contains('x'));

    //Menampilkan Index
    print(nama.indexOf('b'));

}