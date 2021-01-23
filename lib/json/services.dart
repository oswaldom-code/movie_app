//import 'parser.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
//import 'dart:async';
//import 'dart:io';

void main(List<String> arguments) async {
  // This example uses the Google Books API to search for books about http.
  // https://developers.google.com/books/docs/overview
  //var url = 'https://www.googleapis.com/books/v1/volumes?q={http}';

  String urlDiscover =
      'https://api.themoviedb.org/3/discover/movie?api_key=a93bfc03b30c0d7f4bb9536c863de783&language=es&sort_by=popularity.desc&include_adult=false&include_video=false&page=1';

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(urlDiscover);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    var itemCount = jsonResponse['totalItems'];
    print('Number of books about http: $itemCount.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}

class Name {
  
}