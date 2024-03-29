import 'package:movie_app/feature/featue_api/domain/entity/model_entity.dart';
import 'package:movie_app/feature/featue_api/domain/entity/youtube_entity.dart';

abstract class ApiRepository {
  Future<List<MovieEntity>?> getMovies();
  Future<List<MovieEntity>?> getMoviesTopRated();
  Future<List<MovieEntity>?> getMoviesPopular();
  Future<List<MovieEntity>?> getMoviesUpcoming();
  Future<List<MovieEntity>?> searchMovie(String movieName);
  Future<List<YoutubeEntity>?> youtubeVideos(String id);
}
