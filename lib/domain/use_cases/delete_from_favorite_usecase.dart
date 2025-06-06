import 'package:hive/hive.dart';
import 'package:rick_and_morty/domain/index.dart';

class DeleteFromFavoriteUseCase {
  final Box<CharacterWithFavorite> charactersBox;
  const DeleteFromFavoriteUseCase(this.charactersBox);

  AllCharacters call(AllCharacters state, int id) {
    // обновляем список персонажей
    final updatedCharacters = state.characters.map((char) {
      // если id совпадает то убираем из избранных
      if (char.character.id == id) {
        final updateChar = char.copyWith(isFavorite: false);

        // Обновляем Hive
        charactersBox.delete(char.character.id);

        return updateChar;
      } else {
        return char;
      }
    }).toList();

    // обновляем список избранных персонажей
    final updateFavoriteCharacters = updatedCharacters
        .where((char) => char.isFavorite)
        .toList();

    // обновляем список сортированных персонажей
    final updateSortedCharacters = state.sortedCharacters
        .where((char) => char.character.id != id)
        .toList();

    // возвращаем новое состояние
    return state.copyWith(
      characters: updatedCharacters,
      favoriteCharacters: updateFavoriteCharacters,
      sortedCharacters: updateSortedCharacters,
    );
  }
}
