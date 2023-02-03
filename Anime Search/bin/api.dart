import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:test/test.dart';

class AnimeList {
  final String? animeTitle, releasedDate;

  const AnimeList({required this.animeTitle, required this.releasedDate});

  factory AnimeList.fromJson(Map<String, dynamic> data) {
    return AnimeList(
        animeTitle: data["animeTitle"], releasedDate: data["status"]);
  }
}

Future<List<AnimeList>> getData() async {
  try {
    var response = await http
        .get(Uri.parse('https://gogoanime.consumet.stream/genre/horror'));
    if (response.statusCode == 200) {
      List<dynamic> animeData = (json.decode(response.body));
      return animeData.map((e) => AnimeList.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load data from API');
    }
  } catch (e) {
    print(e);
    return [];
  }
}

void main(List<String> args) async {
  String input;

  do {
    input = '';
    print(Process.runSync("clear", [], runInShell: true).stdout);
    print("Welcome to Anime Seach Terminal\n");
    stdout.write("Search Anime : ");
    input = stdin.readLineSync()!;

    print(Process.runSync("clear", [], runInShell: true).stdout);

    print(Process.runSync("clear", [], runInShell: true).stdout);

    print("\Here are search result of '${input}' \n");

    List<AnimeList> animeSearch = await searchAnime(input);

    if (animeSearch.isNotEmpty) {
      for (var anime in animeSearch) {
        print('Title : ${anime.animeTitle}');
        print('${anime.releasedDate}\n');
      }
    } else {
      print('Anime not Found !!\n');
    }
    print('Search another Anime ? (y/n)');
    input = stdin.readLineSync()!.toLowerCase();
  } while (input == 'y');
}

Future<List<AnimeList>> searchAnime(String search) async {
  try {
    var response = await http.get(
        Uri.parse('https://gogoanime.consumet.stream/search?keyw=${search}'));
    if (response.statusCode == 200) {
      List<dynamic> animeData = (json.decode(response.body));
      return animeData.map((e) => AnimeList.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load data from API');
    }
  } catch (e) {
    print(e);
    return [];
  }
}


// void main(List<String> arguments) async {
//   print(Process.runSync("clear", [], runInShell: true).stdout);
//   List data = [];
//   List<AnimeList> anime = <AnimeList>[];

//   var response = await http
//       .get(Uri.parse('https://gogoanime.consumet.stream/genre/horror'))
//       .then((value) {
//     if (value.statusCode == 200) {
//       data = json.decode(value.body);
//     } else {
//       print('error');
//     }
//   });

//   for (var item in data) {
//     AnimeList tes = AnimeList(
//         animeTitle: item["animeTitle"], releasedDate: item["releasedDate"]);
//     anime.add(tes);
//   }

//   for (var item in anime) {
//     print('Title :${item.animeTitle}');
//     print('Relase :${item.releasedDate}\n');
//   }
// }
