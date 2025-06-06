import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:rick_and_morty/config/index.dart';
import 'package:rick_and_morty/state/models/index.dart';

import 'get_all_characters_usecase.dart';

class LoadMoreCharactersUseCase {
  final Connectivity connectivity;
  final GetAllCharactersUsecase getAllCharacters;
  LoadMoreCharactersUseCase(this.getAllCharacters, this.connectivity);

  Future<AllCharacters> call(AllCharacters state) async {
    final nextPage = state.currentPage + 1;

    // проверка на лимит страниц
    if (nextPage > AppConstants.totalPages) {
      return state.copyWith(hasMore: false, isLoadingMore: false);
    }

    // Проверка подключения к сети
    final connectivityResults = await connectivity.checkConnectivity();
    final hasInternet =
        connectivityResults.contains(ConnectivityResult.mobile) ||
        connectivityResults.contains(ConnectivityResult.wifi);

    if (!hasInternet) {
      // Нет интернета → останавливаем пагинацию
      return state.copyWith(hasMore: false, isLoadingMore: false);
    }

    try {
      final nextPageCharacters = await getAllCharacters(nextPage);

      final updatedCharacters = [
        ...state.characters,
        ...nextPageCharacters.characters,
      ];

      return state.copyWith(
        characters: updatedCharacters,
        currentPage: nextPage,
        isLoadingMore: false,
      );
    } catch (e) {
      rethrow;
    }
  }
}
