import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/providers/di/get_all_characters_usecase_provider.dart';
import 'package:rick_and_morty/state/models/index.dart';

import 'di/load_more_characters_usecase_provider.dart';

class AllCharactersNotifier extends AsyncNotifier<AllCharacters> {
  @override
  FutureOr<AllCharacters> build() async {
    final getAllCharacters = ref.read(getAllCharactersUseCaseProvider);
    return await getAllCharacters(1);
  }

  Future<void> loadMoreCharacters() async {
    // получаем текущее состояние и проверяем есть ли оно
    final currentState = state.value;
    if (currentState == null) return;

    // обновляем состояние подгрузки
    state = AsyncValue.data(state.value!.copyWith(isLoadingMore: true));

    // получаем usecase
    final loadMoreCharacters = ref.read(loadMoreCharactersUseCaseProvider);

    // обновляем состояние
    state = await AsyncValue.guard(() async {
      final nextPageCharacters = await loadMoreCharacters(currentState);

      return nextPageCharacters;
    });
  }

  addToFavorite(int id) {
    // получаем текущее состояние и проверяем есть ли оно
    final currentState = state.value;
    if (currentState == null) return;

    // обновляем список персонажей
    final updatedCharacters = currentState.characters.map((char) {
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

    // обновляем состояние
    state = AsyncValue.data(
      currentState.copyWith(
        characters: updatedCharacters,
        favoriteCharacters: updateFavoriteCharacters,
        sortedCharacters: updateFavoriteCharacters,
      ),
    );
  }

  deleteFromFavorite(int id) {
    // получаем текущее состояние и проверяем есть ли оно
    final currentState = state.value;
    if (currentState == null) return;

    // обновляем список персонажей
    final updatedCharacters = currentState.characters.map((char) {
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

    // обновляем список сортированных персонажей
    final updateSortedCharacters = currentState.sortedCharacters
        .where((char) => char.character.id != id)
        .toList();

    // обновляем состояние
    state = AsyncValue.data(
      currentState.copyWith(
        characters: updatedCharacters,
        favoriteCharacters: updateFavoriteCharacters,
        sortedCharacters: updateSortedCharacters,
      ),
    );
  }

  sortBySpecies(String species) {
    // получаем текущее состояние и проверяем есть ли оно
    final currentState = state.value;
    if (currentState == null) return;

    final sortedCharacters = currentState.favoriteCharacters.where((char) {
      if (species == 'All') return true;
      return char.character.species == species;
    }).toList();

    state = AsyncValue.data(
      currentState.copyWith(sortedCharacters: sortedCharacters),
    );
  }
}

// провайдер

final allCharactersProvider = AsyncNotifierProvider(AllCharactersNotifier.new);
