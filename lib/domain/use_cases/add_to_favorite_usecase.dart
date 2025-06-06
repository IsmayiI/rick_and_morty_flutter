import 'package:hive_flutter/hive_flutter.dart';
import 'package:rick_and_morty/domain/index.dart';

class AddToFavoriteUseCase {
  final Box<CharacterWithFavorite> charactersBox;
  const AddToFavoriteUseCase(this.charactersBox);

  AllCharacters call(AllCharacters state, int id) {
    // обновляем список персонажей
    final updatedCharacters = state.characters.map((char) {
      // если id совпадает то меняем isFavorite
      if (char.character.id == id) {
        final updatedChar = char.copyWith(isFavorite: !char.isFavorite);

        // Обновляем Hive
        if (updatedChar.isFavorite) {
          charactersBox.put(char.character.id, updatedChar);
        } else {
          charactersBox.delete(char.character.id);
        }

        return updatedChar;
      } else {
        return char;
      }
    }).toList();

    // обновляем список избранных персонажей
    final updateFavoriteCharacters = updatedCharacters
        .where((char) => char.isFavorite)
        .toList();

    // возвращаем новое состояние
    return state.copyWith(
      characters: updatedCharacters,
      favoriteCharacters: updateFavoriteCharacters,
      sortedCharacters: updateFavoriteCharacters,
    );
  }
}
