import 'package:flutter/material.dart';
import 'package:movie_app/screens/home/components/categories.dart';
import 'package:movie_app/screens/home/components/genre.dart';
import 'package:movie_app/constants.dart';
//import 'package:movie_app/models/movie.dart';
//import 'movie_card.dart';

import 'movie_carrusel.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext contex) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CategoryList(),
          Genres(),
          SizedBox(height: kDefaultPadding),
          MovieCarrusel(),
        ],
      ),
    );
  }
}
