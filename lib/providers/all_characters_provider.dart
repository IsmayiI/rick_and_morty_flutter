import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morty/providers/di/get_all_characters_usecase_provider.dart';
import 'package:rick_and_morty/state/models/index.dart';

class AllCharactersNotifier extends AsyncNotifier<AllCharacters> {
  @override
  FutureOr<AllCharacters> build() async {
    final getAllCharacters = ref.read(getAllCharactersUseCaseProvider);
    return await getAllCharacters();
  }

  Future<void> refreshList() async {
    state = const AsyncLoading();
    final getAllCharacters = ref.read(getAllCharactersUseCaseProvider);
    state = await AsyncValue.guard(() => getAllCharacters());
  }
}

final allCharactersProvider = AsyncNotifierProvider(AllCharactersNotifier.new);
