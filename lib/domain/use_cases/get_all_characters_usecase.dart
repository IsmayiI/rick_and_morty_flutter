import 'package:rick_and_morty/state/models/index.dart';

import 'get_characters_usecase.dart';

class GetAllCharactersUsecase {
  final GetCharactersUseCase getCharactersUseCase;

  GetAllCharactersUsecase(this.getCharactersUseCase);

  Future<AllCharacters> call() async {
    try {
      final characters = await getCharactersUseCase();

      final charactersWithFavorite = characters.results.map((char) {
        return CharacterWithFavorite(character: char, isFavorite: false);
      }).toList();

      return AllCharacters(characters: charactersWithFavorite);
    } catch (e) {
      rethrow;
    }
  }
}
