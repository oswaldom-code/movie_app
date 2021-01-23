/* import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
//import 'dart:async';

String urlDiscover =
    'https://api.themoviedb.org/3/discover/movie?api_key=a93bfc03b30c0d7f4bb9536c863de783&language=es&sort_by=popularity.desc&include_adult=false&include_video=false&page=1';

// Await the http get response, then decode the json-formatted response.
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //var response = await http.get(urlDiscover);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      var itemCount = jsonResponse['totalItems'];
      print('Number of books about http: $itemCount.');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(),
    );
  }
}
*/
