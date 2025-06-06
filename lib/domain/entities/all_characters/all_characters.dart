import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/domain/index.dart';

part 'all_characters.freezed.dart';

@freezed
abstract class AllCharacters with _$AllCharacters {
  const factory AllCharacters({
    required List<CharacterWithFavorite> characters,
    required List<CharacterWithFavorite> favoriteCharacters,
    required List<CharacterWithFavorite> sortedCharacters,
    required int currentPage,
    required bool hasMore,
    required bool isLoadingMore,
  }) = _AllCharacters;
}
