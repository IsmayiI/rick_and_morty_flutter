import 'package:json_annotation/json_annotation.dart';

part 'character.g.dart';

@JsonSerializable()
class Character {
  Character({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.image,
  });
  final int id;
  final String name;
  final String status;
  final String species;
  final String image;

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterToJson(this);
}
