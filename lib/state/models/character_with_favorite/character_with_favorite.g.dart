// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_with_favorite.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CharacterWithFavoriteAdapter extends TypeAdapter<CharacterWithFavorite> {
  @override
  final int typeId = 1;

  @override
  CharacterWithFavorite read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CharacterWithFavorite(
      character: fields[0] as Character,
      isFavorite: fields[1] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, CharacterWithFavorite obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.character)
      ..writeByte(1)
      ..write(obj.isFavorite);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CharacterWithFavoriteAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterWithFavorite _$CharacterWithFavoriteFromJson(
        Map<String, dynamic> json) =>
    CharacterWithFavorite(
      character: Character.fromJson(json['character'] as Map<String, dynamic>),
      isFavorite: json['isFavorite'] as bool? ?? false,
    );

Map<String, dynamic> _$CharacterWithFavoriteToJson(
        CharacterWithFavorite instance) =>
    <String, dynamic>{
      'character': instance.character,
      'isFavorite': instance.isFavorite,
    };
