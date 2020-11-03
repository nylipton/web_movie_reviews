import 'dart:async';
import 'package:web_movie_reviews/models/TrailerModel.dart';

import 'MovieApiProvider.dart';
import '../models/ItemModel.dart';

class MovieRepository {
  final moviesApiProvider = MovieApiProvider();

  Future<ItemModel> fetchAllMovies() async => moviesApiProvider.fetchMovieList();
  Future<TrailerModel> fetchTrailers(int movieId) async => moviesApiProvider.fetchTrailer(movieId);

  void dispose( ) => moviesApiProvider.dispose() ;
}