import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:rick_and_morty/domain/index.dart';
import 'package:rick_and_morty/presentations/index.dart';

final getAllCharactersUseCaseProvider = Provider((ref) {
  final getCharactersUseCase = ref.watch(getCharactersUseCaseProvider);
  final charactersBox = Hive.box<CharacterWithFavorite>('characters');
  return GetAllCharactersUsecase(getCharactersUseCase, charactersBox);
});
