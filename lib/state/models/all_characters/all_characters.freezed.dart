// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_characters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AllCharacters {

 List<CharacterWithFavorite> get characters; int get currentPage; bool get hasMore;
/// Create a copy of AllCharacters
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AllCharactersCopyWith<AllCharacters> get copyWith => _$AllCharactersCopyWithImpl<AllCharacters>(this as AllCharacters, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AllCharacters&&const DeepCollectionEquality().equals(other.characters, characters)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(characters),currentPage,hasMore);

@override
String toString() {
  return 'AllCharacters(characters: $characters, currentPage: $currentPage, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $AllCharactersCopyWith<$Res>  {
  factory $AllCharactersCopyWith(AllCharacters value, $Res Function(AllCharacters) _then) = _$AllCharactersCopyWithImpl;
@useResult
$Res call({
 List<CharacterWithFavorite> characters, int currentPage, bool hasMore
});




}
/// @nodoc
class _$AllCharactersCopyWithImpl<$Res>
    implements $AllCharactersCopyWith<$Res> {
  _$AllCharactersCopyWithImpl(this._self, this._then);

  final AllCharacters _self;
  final $Res Function(AllCharacters) _then;

/// Create a copy of AllCharacters
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? characters = null,Object? currentPage = null,Object? hasMore = null,}) {
  return _then(_self.copyWith(
characters: null == characters ? _self.characters : characters // ignore: cast_nullable_to_non_nullable
as List<CharacterWithFavorite>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _AllCharacters implements AllCharacters {
  const _AllCharacters({required final  List<CharacterWithFavorite> characters, required this.currentPage, required this.hasMore}): _characters = characters;
  

 final  List<CharacterWithFavorite> _characters;
@override List<CharacterWithFavorite> get characters {
  if (_characters is EqualUnmodifiableListView) return _characters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_characters);
}

@override final  int currentPage;
@override final  bool hasMore;

/// Create a copy of AllCharacters
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AllCharactersCopyWith<_AllCharacters> get copyWith => __$AllCharactersCopyWithImpl<_AllCharacters>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AllCharacters&&const DeepCollectionEquality().equals(other._characters, _characters)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_characters),currentPage,hasMore);

@override
String toString() {
  return 'AllCharacters(characters: $characters, currentPage: $currentPage, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class _$AllCharactersCopyWith<$Res> implements $AllCharactersCopyWith<$Res> {
  factory _$AllCharactersCopyWith(_AllCharacters value, $Res Function(_AllCharacters) _then) = __$AllCharactersCopyWithImpl;
@override @useResult
$Res call({
 List<CharacterWithFavorite> characters, int currentPage, bool hasMore
});




}
/// @nodoc
class __$AllCharactersCopyWithImpl<$Res>
    implements _$AllCharactersCopyWith<$Res> {
  __$AllCharactersCopyWithImpl(this._self, this._then);

  final _AllCharacters _self;
  final $Res Function(_AllCharacters) _then;

/// Create a copy of AllCharacters
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? characters = null,Object? currentPage = null,Object? hasMore = null,}) {
  return _then(_AllCharacters(
characters: null == characters ? _self._characters : characters // ignore: cast_nullable_to_non_nullable
as List<CharacterWithFavorite>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
