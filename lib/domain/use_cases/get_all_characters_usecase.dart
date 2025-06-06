import 'package:hive/hive.dart';
import 'package:rick_and_morty/state/models/index.dart';

import 'index.dart';

class GetAllCharactersUsecase {
  final GetCharactersUseCase getCharactersUseCase;

  // Hive box для кеша
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

      if (cachedCharacters.isEmpty) {
        // Кеша нет — просто пробрасываем ошибку дальше
        rethrow;
      }

      // Обновляем список избранных персонажей
      final updateFavoriteCharacters = cachedCharacters
          .where((char) => char.isFavorite)
          .toList();

      return AllCharacters(
        characters: cachedCharacters,
        currentPage: 1,
        hasMore: false,
        isLoadingMore: false,
        favoriteCharacters: updateFavoriteCharacters,
        sortedCharacters: updateFavoriteCharacters,
      );
    }
  }

  Future<void> _saveCharactersToCache(
    List<CharacterWithFavorite> characters,
  ) async {
    try {
      for (var charWithFav in characters) {
        await charactersBox.put(charWithFav.character.id, charWithFav);
      }
    } catch (e) {
      // Логируем ошибку, но не кидаем дальше,
      // чтобы не прерывать загрузку с API
      print('Ошибка при сохранении в кеш: $e');
    }
  }
}
