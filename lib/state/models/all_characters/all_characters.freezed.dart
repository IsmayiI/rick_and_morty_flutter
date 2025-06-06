// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_characters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AllCharacters {
  List<CharacterWithFavorite> get characters =>
      throw _privateConstructorUsedError;
  List<CharacterWithFavorite> get favoriteCharacters =>
      throw _privateConstructorUsedError;
  List<CharacterWithFavorite> get sortedCharacters =>
      throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  bool get isLoadingMore => throw _privateConstructorUsedError;

  /// Create a copy of AllCharacters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllCharactersCopyWith<AllCharacters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllCharactersCopyWith<$Res> {
  factory $AllCharactersCopyWith(
          AllCharacters value, $Res Function(AllCharacters) then) =
      _$AllCharactersCopyWithImpl<$Res, AllCharacters>;
  @useResult
  $Res call(
      {List<CharacterWithFavorite> characters,
      List<CharacterWithFavorite> favoriteCharacters,
      List<CharacterWithFavorite> sortedCharacters,
      int currentPage,
      bool hasMore,
      bool isLoadingMore});
}

/// @nodoc
class _$AllCharactersCopyWithImpl<$Res, $Val extends AllCharacters>
    implements $AllCharactersCopyWith<$Res> {
  _$AllCharactersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllCharacters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? favoriteCharacters = null,
    Object? sortedCharacters = null,
    Object? currentPage = null,
    Object? hasMore = null,
    Object? isLoadingMore = null,
  }) {
    return _then(_value.copyWith(
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterWithFavorite>,
      favoriteCharacters: null == favoriteCharacters
          ? _value.favoriteCharacters
          : favoriteCharacters // ignore: cast_nullable_to_non_nullable
              as List<CharacterWithFavorite>,
      sortedCharacters: null == sortedCharacters
          ? _value.sortedCharacters
          : sortedCharacters // ignore: cast_nullable_to_non_nullable
              as List<CharacterWithFavorite>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllCharactersImplCopyWith<$Res>
    implements $AllCharactersCopyWith<$Res> {
  factory _$$AllCharactersImplCopyWith(
          _$AllCharactersImpl value, $Res Function(_$AllCharactersImpl) then) =
      __$$AllCharactersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CharacterWithFavorite> characters,
      List<CharacterWithFavorite> favoriteCharacters,
      List<CharacterWithFavorite> sortedCharacters,
      int currentPage,
      bool hasMore,
      bool isLoadingMore});
}

/// @nodoc
class __$$AllCharactersImplCopyWithImpl<$Res>
    extends _$AllCharactersCopyWithImpl<$Res, _$AllCharactersImpl>
    implements _$$AllCharactersImplCopyWith<$Res> {
  __$$AllCharactersImplCopyWithImpl(
      _$AllCharactersImpl _value, $Res Function(_$AllCharactersImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllCharacters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? favoriteCharacters = null,
    Object? sortedCharacters = null,
    Object? currentPage = null,
    Object? hasMore = null,
    Object? isLoadingMore = null,
  }) {
    return _then(_$AllCharactersImpl(
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterWithFavorite>,
      favoriteCharacters: null == favoriteCharacters
          ? _value._favoriteCharacters
          : favoriteCharacters // ignore: cast_nullable_to_non_nullable
              as List<CharacterWithFavorite>,
      sortedCharacters: null == sortedCharacters
          ? _value._sortedCharacters
          : sortedCharacters // ignore: cast_nullable_to_non_nullable
              as List<CharacterWithFavorite>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AllCharactersImpl implements _AllCharacters {
  const _$AllCharactersImpl(
      {required final List<CharacterWithFavorite> characters,
      required final List<CharacterWithFavorite> favoriteCharacters,
      required final List<CharacterWithFavorite> sortedCharacters,
      required this.currentPage,
      required this.hasMore,
      required this.isLoadingMore})
      : _characters = characters,
        _favoriteCharacters = favoriteCharacters,
        _sortedCharacters = sortedCharacters;

  final List<CharacterWithFavorite> _characters;
  @override
  List<CharacterWithFavorite> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  final List<CharacterWithFavorite> _favoriteCharacters;
  @override
  List<CharacterWithFavorite> get favoriteCharacters {
    if (_favoriteCharacters is EqualUnmodifiableListView)
      return _favoriteCharacters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteCharacters);
  }

  final List<CharacterWithFavorite> _sortedCharacters;
  @override
  List<CharacterWithFavorite> get sortedCharacters {
    if (_sortedCharacters is EqualUnmodifiableListView)
      return _sortedCharacters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sortedCharacters);
  }

  @override
  final int currentPage;
  @override
  final bool hasMore;
  @override
  final bool isLoadingMore;

  @override
  String toString() {
    return 'AllCharacters(characters: $characters, favoriteCharacters: $favoriteCharacters, sortedCharacters: $sortedCharacters, currentPage: $currentPage, hasMore: $hasMore, isLoadingMore: $isLoadingMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllCharactersImpl &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            const DeepCollectionEquality()
                .equals(other._favoriteCharacters, _favoriteCharacters) &&
            const DeepCollectionEquality()
                .equals(other._sortedCharacters, _sortedCharacters) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_characters),
      const DeepCollectionEquality().hash(_favoriteCharacters),
      const DeepCollectionEquality().hash(_sortedCharacters),
      currentPage,
      hasMore,
      isLoadingMore);

  /// Create a copy of AllCharacters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllCharactersImplCopyWith<_$AllCharactersImpl> get copyWith =>
      __$$AllCharactersImplCopyWithImpl<_$AllCharactersImpl>(this, _$identity);
}

abstract class _AllCharacters implements AllCharacters {
  const factory _AllCharacters(
      {required final List<CharacterWithFavorite> characters,
      required final List<CharacterWithFavorite> favoriteCharacters,
      required final List<CharacterWithFavorite> sortedCharacters,
      required final int currentPage,
      required final bool hasMore,
      required final bool isLoadingMore}) = _$AllCharactersImpl;

  @override
  List<CharacterWithFavorite> get characters;
  @override
  List<CharacterWithFavorite> get favoriteCharacters;
  @override
  List<CharacterWithFavorite> get sortedCharacters;
  @override
  int get currentPage;
  @override
  bool get hasMore;
  @override
  bool get isLoadingMore;

  /// Create a copy of AllCharacters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllCharactersImplCopyWith<_$AllCharactersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
