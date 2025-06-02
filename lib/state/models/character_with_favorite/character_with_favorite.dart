import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/domain/models/index.dart';

part 'character_with_favorite.freezed.dart';

@freezed
abstract class CharacterWithFavorite with _$CharacterWithFavorite {
  const factory CharacterWithFavorite({
    required Character character,
    required bool isFavorite,
  }) = _CharacterWithFavorite;
}
