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
    final currentState = state.value;
    if (currentState == null) return;
    state = AsyncValue.data(state.value!.copyWith(isLoadingMore: true));

    final loadMoreCharacters = ref.read(loadMoreCharactersUseCaseProvider);

    state = await AsyncValue.guard(() async {
      final nextPageCharacters = await loadMoreCharacters(currentState);

      return nextPageCharacters;
    });
  }
}

final allCharactersProvider = AsyncNotifierProvider(AllCharactersNotifier.new);
