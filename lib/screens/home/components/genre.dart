import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/screens/home/components/genra_card.dart';

class Genres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> genres = [
      "Acción",
      "Comedia",
      "Terror",
      "Infantiles",
      "Drama",
      "Suspenso",
      "Aventura",
      "Ficción"
    ];
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 20),
      height: 36,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: genres.length,
        itemBuilder: (context, index) => GenreCard(genre: genres[index]),
      ),
    );
  }
}
