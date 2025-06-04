import 'package:rick_and_morty/state/models/index.dart';

import 'get_characters_usecase.dart';

class GetAllCharactersUsecase {
  final GetCharactersUseCase getCharactersUseCase;

  GetAllCharactersUsecase(this.getCharactersUseCase);

  Future<AllCharacters> call(int page) async {
    try {
      final characters = await getCharactersUseCase(page);

      final charactersWithFavorite = characters.results.map((char) {
        return CharacterWithFavorite(character: char, isFavorite: false);
      }).toList();

      return AllCharacters(
        characters: charactersWithFavorite,
        currentPage: page,
        hasMore: true,
        isLoadingMore: false,
      );
    } catch (e) {
      rethrow;
    }
  }
}
