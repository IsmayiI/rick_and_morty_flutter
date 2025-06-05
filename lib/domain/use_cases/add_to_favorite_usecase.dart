import 'package:rick_and_morty/state/models/index.dart';

class AddToFavoriteUseCase {
  const AddToFavoriteUseCase();

  AllCharacters call(AllCharacters state, int id) {
    // обновляем список персонажей
    final updatedCharacters = state.characters.map((char) {
      // если id совпадает то меняем isFavorite
      if (char.character.id == id) {
        final updateChar = char.copyWith(isFavorite: !char.isFavorite);
        return updateChar;
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
