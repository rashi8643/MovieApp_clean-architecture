import 'package:movie_app/core/excepation/Base_excepation.dart';
import 'package:movie_app/feature/featue_api/domain/entity/model_entity.dart';
import 'package:movie_app/feature/featue_api/domain/rerository/api_repository.dart';

final class MovieApiUsecase {
  final ApiRepository repository;
  MovieApiUsecase({required this.repository});

  Future<List<MovieEntity>?> call() async {
    try {
      return await repository.getMovies();
    } catch (e) {
      throw BaseException('Error');
    }
  }
}