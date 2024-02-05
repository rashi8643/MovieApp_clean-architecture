import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:movie_app/core/excepation/Base_excepation.dart';
import 'package:movie_app/core/utils/internet_connection_utils.dart';
import 'package:movie_app/feature/featue_api/domain/entity/model_entity.dart';
import 'package:movie_app/feature/featue_api/domain/rerository/api_repository.dart';
import 'package:movie_app/feature/featue_api/domain/rerository/objectbox_repositury.dart';

final class UpcomingMovieUsecase {
  final ApiRepository apiRepo;
  final ObjectBoxRepository localStorageRepo;
  UpcomingMovieUsecase({required this.apiRepo, required this.localStorageRepo});

  Future<List<MovieEntity>?> call() async {
    bool result = await hasNetwork();
    try {
      if (result) {
        final dataFromApi = await apiRepo.getMoviesUpcoming();

        localStorageRepo.clearAllMoviesUpcoming();
        localStorageRepo.addAllMoviesUpcoming(dataFromApi!);

        return dataFromApi;
      } else {
        final dataFromCache = localStorageRepo.getAllMoviesUpcoming();
        return dataFromCache;
      }
    } catch (e) {
      throw BaseException('Error');
    }
  }
}
