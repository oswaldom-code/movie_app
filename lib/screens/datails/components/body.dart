import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:movie_app/models/movie.dart';
import 'backdrop_ranting.dart';
import 'package:movie_app/constants.dart';
import 'cast_and_crew.dart';
import 'genres.dart';
import 'title_duration_and_fab_tn.dart';

class Body extends StatelessWidget {
  final Movie movie;

  const Body({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        BackdropAndRating(size: size, movie: movie),
        //SizedBox(height: kDefaultPadding - 20),
        TitleDurationAndFabTn(movie: movie),
        Genres(movie: movie),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding, vertical: kDefaultPadding / 4),
          child: Text(
            'Resumen de la trama',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(movie.plot, style: TextStyle(color: Color(0xFF737599))),
        ),
        CastAndCrew(casts: movie.cast)
      ],
    );
  }
}
