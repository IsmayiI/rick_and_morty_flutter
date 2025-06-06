import 'package:hive/hive.dart';
import 'package:rick_and_morty/domain/index.dart';

class GetAllCharactersUsecase {
  final GetCharactersUseCase getCharactersUseCase;
  final Box<CharacterWithFavorite> charactersBox;

  GetAllCharactersUsecase(this.getCharactersUseCase, this.charactersBox);

  Future<AllCharacters> call(int page) async {
    try {
      // Пытаемся получить с API
      final characters = await getCharactersUseCase(page);

      final charactersWithFavorite = characters.results.map((char) {
        // Проверяем в кеше, есть ли персонаж и его isFavorite
        final cached = charactersBox.get(char.id);
        return CharacterWithFavorite(
          character: char,
          isFavorite: cached?.isFavorite ?? false,
        );
      }).toList();

      // Сохраняем в кеш (перезаписываем весь текущий список)
      await _saveCharactersToCache(charactersWithFavorite);

      // Обновляем список избранных персонажей
      final updateFavoriteCharacters = charactersWithFavorite
          .where((char) => char.isFavorite)
          .toList();

      return AllCharacters(
        characters: charactersWithFavorite,
        currentPage: page,
        hasMore: true,
        isLoadingMore: false,
        favoriteCharacters: updateFavoriteCharacters,
        sortedCharacters: updateFavoriteCharacters,
      );
    } catch (e) {
      // При ошибке пытаемся вернуть кешированные данные
      final cachedCharacters = charactersBox.values.toList();

      // Кеша нет — просто пробрасываем ошибку дальше
      if (cachedCharacters.isEmpty) {
        rethrow;
      }

      // Обновляем список избранных персонажей
      final updateFavoriteCharacters = cachedCharacters
          .where((char) => char.isFavorite)
          .toList();

      return AllCharacters(
        characters: cachedCharacters,
        currentPage: 1,
        hasMore: true,
        isLoadingMore: false,
        favoriteCharacters: updateFavoriteCharacters,
        sortedCharacters: updateFavoriteCharacters,
      );
    }
  }

  // Сохраняем персонажей в кеш
  Future<void> _saveCharactersToCache(
    List<CharacterWithFavorite> characters,
  ) async {
    for (var charWithFav in characters) {
      await charactersBox.put(charWithFav.character.id, charWithFav);
    }
  }
}
