import 'package:rick_and_morty/config/index.dart';
import 'package:rick_and_morty/state/models/index.dart';

import 'get_all_characters_usecase.dart';

class LoadMoreCharactersUseCase {
  final GetAllCharactersUsecase getAllCharacters;
  LoadMoreCharactersUseCase(this.getAllCharacters);

  Future<AllCharacters> call(AllCharacters state) async {
    final nextPage = state.currentPage + 1;
    if (nextPage > AppConstants.totalPages) {
      return state.copyWith(hasMore: false);
    }
    ;

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
