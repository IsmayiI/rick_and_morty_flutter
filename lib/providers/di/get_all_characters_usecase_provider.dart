import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:rick_and_morty/domain/use_cases/get_all_characters_usecase.dart';
import 'package:rick_and_morty/state/models/index.dart';

import 'get_characters_usecase_provider.dart';

final getAllCharactersUseCaseProvider = Provider((ref) {
  final getCharactersUseCase = ref.watch(getCharactersUseCaseProvider);
  final charactersBox = Hive.box<CharacterWithFavorite>('characters');
  return GetAllCharactersUsecase(getCharactersUseCase, charactersBox);
});
