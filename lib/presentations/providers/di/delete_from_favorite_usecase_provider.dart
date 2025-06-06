import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:rick_and_morty/domain/index.dart';

final deleteFromFavoriteUseCaseProvider = Provider((ref) {
  final charactersBox = Hive.box<CharacterWithFavorite>('characters');
  return DeleteFromFavoriteUseCase(charactersBox);
});
