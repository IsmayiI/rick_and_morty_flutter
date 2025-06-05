import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/domain/use_cases/index.dart';
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
    state = AsyncValue.data(currentState.copyWith(isLoadingMore: true));

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

    // получаем usecase
    final addToFavorite = AddToFavoriteUseCase();

    // обновляем состояние
    state = AsyncValue.data(addToFavorite(currentState, id));
  }

  deleteFromFavorite(int id) {
    // получаем текущее состояние и проверяем есть ли оно
    final currentState = state.value;
    if (currentState == null) return;

    // получаем usecase
    final deleteFromFavorite = DeleteFromFavoriteUseCase();

    // обновляем состояние
    state = AsyncValue.data(deleteFromFavorite(currentState, id));
  }

  sortBySpecies(String species) {
    // получаем текущее состояние и проверяем есть ли оно
    final currentState = state.value;
    if (currentState == null) return;

    // получаем usecase
    final sortBySpecies = SortBySpeciesUseCase();

    // обновляем состояние
    state = AsyncValue.data(sortBySpecies(currentState, species));
  }
}

// провайдер
final allCharactersProvider = AsyncNotifierProvider(AllCharactersNotifier.new);
