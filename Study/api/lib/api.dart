import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:test/test.dart';

List<int> x = [1, 2, 3];

void main(List<String> arguments) {
  HttpStateful apiGet = HttpStateful();


  HttpStateful.fetchData().then((value) {
    apiGet = value;
  });

  print('Halo');

//  (apiGet.title != null) ? print("Title : ${apiGet.title!}") : print("Tidak Ada Judul");
//  (apiGet.relaseDate != null) ? print("Title : ${apiGet.title!}") : print("Tidak Ada Judul");

}

class HttpStateful {
  String? title, relaseDate;

  HttpStateful({this.title, this.relaseDate});

  static Future<HttpStateful> fetchData() async {
    final response = await http
        .get(Uri.parse('https://gogoanime.consumet.stream/genre/yuri'));

    if (response.statusCode == 200) {
      var data = (json.decode(response.body))[1];

      print(data["animeTitle"]);

      return HttpStateful(
          title: data["animeTitle"], relaseDate: data["relasedDate"]);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
