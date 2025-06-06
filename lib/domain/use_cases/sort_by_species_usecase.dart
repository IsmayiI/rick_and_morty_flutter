import 'package:rick_and_morty/domain/index.dart';

class SortBySpeciesUseCase {
  const SortBySpeciesUseCase();

  AllCharacters call(AllCharacters state, String species) {
    // сортируем персонажей по типу
    final sortedCharacters = state.favoriteCharacters.where((char) {
      if (species == 'All') return true;
      return char.character.species == species;
    }).toList();

    // возвращаем новое состояние
    return state.copyWith(sortedCharacters: sortedCharacters);
  }
}
