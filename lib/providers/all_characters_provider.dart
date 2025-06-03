import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/providers/di/get_all_characters_usecase_provider.dart';
import 'package:rick_and_morty/state/models/index.dart';

import 'di/load_more_characters_usecase_provider.dart';

class AllCharactersNotifier extends AsyncNotifier<AllCharacters> {
  @override
  FutureOr<AllCharacters> build() async {
    final getAllCharacters = ref.read(getAllCharactersUseCaseProvider);
    return await getAllCharacters(41);
  }

  Future<void> loadMoreCharacters() async {
    final currentState = state.value;
    if (currentState == null) return;

    final loadMoreCharacters = ref.read(loadMoreCharactersUseCaseProvider);

    state = await AsyncValue.guard(() async {
      final nextPageCharacters = await loadMoreCharacters(currentState);

      return nextPageCharacters;
    });
  }
}

final allCharactersProvider = AsyncNotifierProvider(AllCharactersNotifier.new);


  // Future<void> loadMoreCharacters() async {
  //   final currentState = state.value;

  //   if (currentState == null) return;

  //   final getAllCharacters = ref.read(getAllCharactersUseCaseProvider);

  //   final nextPage = currentState.currentPage + 1;
  //   if (nextPage > AppConstants.totalPages) return;

  //   try {
  //     final nextPageCharacters = await getAllCharacters(nextPage);

  //     final updatedCharacters = [
  //       ...currentState.characters,
  //       ...nextPageCharacters.characters,
  //     ];

  //     state = AsyncValue.data(
  //       currentState.copyWith(
  //         characters: updatedCharacters,
  //         currentPage: nextPage,
  //       ),
  //     );
  //   } catch (e, st) {
  //     state = AsyncValue.error(e, st);
  //   }
  // }