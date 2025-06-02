// all_characters_state.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/state/models/character_with_favorite/character_with_favorite.dart';

part 'all_characters.freezed.dart';

@freezed
abstract class AllCharacters with _$AllCharacters {
  const factory AllCharacters({
    required List<CharacterWithFavorite> characters,
  }) = _AllCharacters;
}
