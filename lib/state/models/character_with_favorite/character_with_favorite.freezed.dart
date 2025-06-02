// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_with_favorite.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CharacterWithFavorite {

 Character get character; bool get isFavorite;
/// Create a copy of CharacterWithFavorite
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterWithFavoriteCopyWith<CharacterWithFavorite> get copyWith => _$CharacterWithFavoriteCopyWithImpl<CharacterWithFavorite>(this as CharacterWithFavorite, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterWithFavorite&&(identical(other.character, character) || other.character == character)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}


@override
int get hashCode => Object.hash(runtimeType,character,isFavorite);

@override
String toString() {
  return 'CharacterWithFavorite(character: $character, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class $CharacterWithFavoriteCopyWith<$Res>  {
  factory $CharacterWithFavoriteCopyWith(CharacterWithFavorite value, $Res Function(CharacterWithFavorite) _then) = _$CharacterWithFavoriteCopyWithImpl;
@useResult
$Res call({
 Character character, bool isFavorite
});




}
/// @nodoc
class _$CharacterWithFavoriteCopyWithImpl<$Res>
    implements $CharacterWithFavoriteCopyWith<$Res> {
  _$CharacterWithFavoriteCopyWithImpl(this._self, this._then);

  final CharacterWithFavorite _self;
  final $Res Function(CharacterWithFavorite) _then;

/// Create a copy of CharacterWithFavorite
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? character = null,Object? isFavorite = null,}) {
  return _then(_self.copyWith(
character: null == character ? _self.character : character // ignore: cast_nullable_to_non_nullable
as Character,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _CharacterWithFavorite implements CharacterWithFavorite {
  const _CharacterWithFavorite({required this.character, required this.isFavorite});
  

@override final  Character character;
@override final  bool isFavorite;

/// Create a copy of CharacterWithFavorite
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CharacterWithFavoriteCopyWith<_CharacterWithFavorite> get copyWith => __$CharacterWithFavoriteCopyWithImpl<_CharacterWithFavorite>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CharacterWithFavorite&&(identical(other.character, character) || other.character == character)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}


@override
int get hashCode => Object.hash(runtimeType,character,isFavorite);

@override
String toString() {
  return 'CharacterWithFavorite(character: $character, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class _$CharacterWithFavoriteCopyWith<$Res> implements $CharacterWithFavoriteCopyWith<$Res> {
  factory _$CharacterWithFavoriteCopyWith(_CharacterWithFavorite value, $Res Function(_CharacterWithFavorite) _then) = __$CharacterWithFavoriteCopyWithImpl;
@override @useResult
$Res call({
 Character character, bool isFavorite
});




}
/// @nodoc
class __$CharacterWithFavoriteCopyWithImpl<$Res>
    implements _$CharacterWithFavoriteCopyWith<$Res> {
  __$CharacterWithFavoriteCopyWithImpl(this._self, this._then);

  final _CharacterWithFavorite _self;
  final $Res Function(_CharacterWithFavorite) _then;

/// Create a copy of CharacterWithFavorite
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? character = null,Object? isFavorite = null,}) {
  return _then(_CharacterWithFavorite(
character: null == character ? _self.character : character // ignore: cast_nullable_to_non_nullable
as Character,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
