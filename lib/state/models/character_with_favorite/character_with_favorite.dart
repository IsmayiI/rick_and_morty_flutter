import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:rick_and_morty/domain/models/index.dart';

part 'character_with_favorite.g.dart';

@HiveType(typeId: 1)
@JsonSerializable()
class CharacterWithFavorite extends HiveObject {
  @HiveField(0)
  final Character character;

  @HiveField(1)
  bool isFavorite;

  CharacterWithFavorite({required this.character, this.isFavorite = false});

  CharacterWithFavorite copyWith({Character? character, bool? isFavorite}) {
    return CharacterWithFavorite(
      character: character ?? this.character,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  factory CharacterWithFavorite.fromJson(Map<String, dynamic> json) =>
      _$CharacterWithFavoriteFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterWithFavoriteToJson(this);
}
