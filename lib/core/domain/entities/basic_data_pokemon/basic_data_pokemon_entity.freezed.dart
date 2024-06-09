// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_data_pokemon_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BasicDataPokemonEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get artwork => throw _privateConstructorUsedError;
  String get dreamworld => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BasicDataPokemonEntityCopyWith<BasicDataPokemonEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicDataPokemonEntityCopyWith<$Res> {
  factory $BasicDataPokemonEntityCopyWith(BasicDataPokemonEntity value,
          $Res Function(BasicDataPokemonEntity) then) =
      _$BasicDataPokemonEntityCopyWithImpl<$Res, BasicDataPokemonEntity>;
  @useResult
  $Res call({int id, String name, String artwork, String dreamworld});
}

/// @nodoc
class _$BasicDataPokemonEntityCopyWithImpl<$Res,
        $Val extends BasicDataPokemonEntity>
    implements $BasicDataPokemonEntityCopyWith<$Res> {
  _$BasicDataPokemonEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? artwork = null,
    Object? dreamworld = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      artwork: null == artwork
          ? _value.artwork
          : artwork // ignore: cast_nullable_to_non_nullable
              as String,
      dreamworld: null == dreamworld
          ? _value.dreamworld
          : dreamworld // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasicDataPokemonEntityImplCopyWith<$Res>
    implements $BasicDataPokemonEntityCopyWith<$Res> {
  factory _$$BasicDataPokemonEntityImplCopyWith(
          _$BasicDataPokemonEntityImpl value,
          $Res Function(_$BasicDataPokemonEntityImpl) then) =
      __$$BasicDataPokemonEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String artwork, String dreamworld});
}

/// @nodoc
class __$$BasicDataPokemonEntityImplCopyWithImpl<$Res>
    extends _$BasicDataPokemonEntityCopyWithImpl<$Res,
        _$BasicDataPokemonEntityImpl>
    implements _$$BasicDataPokemonEntityImplCopyWith<$Res> {
  __$$BasicDataPokemonEntityImplCopyWithImpl(
      _$BasicDataPokemonEntityImpl _value,
      $Res Function(_$BasicDataPokemonEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? artwork = null,
    Object? dreamworld = null,
  }) {
    return _then(_$BasicDataPokemonEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      artwork: null == artwork
          ? _value.artwork
          : artwork // ignore: cast_nullable_to_non_nullable
              as String,
      dreamworld: null == dreamworld
          ? _value.dreamworld
          : dreamworld // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BasicDataPokemonEntityImpl implements _BasicDataPokemonEntity {
  const _$BasicDataPokemonEntityImpl(
      {required this.id,
      required this.name,
      required this.artwork,
      required this.dreamworld});

  @override
  final int id;
  @override
  final String name;
  @override
  final String artwork;
  @override
  final String dreamworld;

  @override
  String toString() {
    return 'BasicDataPokemonEntity(id: $id, name: $name, artwork: $artwork, dreamworld: $dreamworld)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasicDataPokemonEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.artwork, artwork) || other.artwork == artwork) &&
            (identical(other.dreamworld, dreamworld) ||
                other.dreamworld == dreamworld));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, artwork, dreamworld);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasicDataPokemonEntityImplCopyWith<_$BasicDataPokemonEntityImpl>
      get copyWith => __$$BasicDataPokemonEntityImplCopyWithImpl<
          _$BasicDataPokemonEntityImpl>(this, _$identity);
}

abstract class _BasicDataPokemonEntity implements BasicDataPokemonEntity {
  const factory _BasicDataPokemonEntity(
      {required final int id,
      required final String name,
      required final String artwork,
      required final String dreamworld}) = _$BasicDataPokemonEntityImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  String get artwork;
  @override
  String get dreamworld;
  @override
  @JsonKey(ignore: true)
  _$$BasicDataPokemonEntityImplCopyWith<_$BasicDataPokemonEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
