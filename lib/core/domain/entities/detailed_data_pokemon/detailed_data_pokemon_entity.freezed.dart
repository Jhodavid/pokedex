// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_data_pokemon_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailedDataPokemonEntity {
  int get baseExperience => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  List<String> get abilities => throw _privateConstructorUsedError;
  List<String> get moves => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailedDataPokemonEntityCopyWith<DetailedDataPokemonEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedDataPokemonEntityCopyWith<$Res> {
  factory $DetailedDataPokemonEntityCopyWith(DetailedDataPokemonEntity value,
          $Res Function(DetailedDataPokemonEntity) then) =
      _$DetailedDataPokemonEntityCopyWithImpl<$Res, DetailedDataPokemonEntity>;
  @useResult
  $Res call(
      {int baseExperience,
      int height,
      int id,
      String name,
      int weight,
      List<String> abilities,
      List<String> moves});
}

/// @nodoc
class _$DetailedDataPokemonEntityCopyWithImpl<$Res,
        $Val extends DetailedDataPokemonEntity>
    implements $DetailedDataPokemonEntityCopyWith<$Res> {
  _$DetailedDataPokemonEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseExperience = null,
    Object? height = null,
    Object? id = null,
    Object? name = null,
    Object? weight = null,
    Object? abilities = null,
    Object? moves = null,
  }) {
    return _then(_value.copyWith(
      baseExperience: null == baseExperience
          ? _value.baseExperience
          : baseExperience // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      abilities: null == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      moves: null == moves
          ? _value.moves
          : moves // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailedDataPokemonEntityImplCopyWith<$Res>
    implements $DetailedDataPokemonEntityCopyWith<$Res> {
  factory _$$DetailedDataPokemonEntityImplCopyWith(
          _$DetailedDataPokemonEntityImpl value,
          $Res Function(_$DetailedDataPokemonEntityImpl) then) =
      __$$DetailedDataPokemonEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int baseExperience,
      int height,
      int id,
      String name,
      int weight,
      List<String> abilities,
      List<String> moves});
}

/// @nodoc
class __$$DetailedDataPokemonEntityImplCopyWithImpl<$Res>
    extends _$DetailedDataPokemonEntityCopyWithImpl<$Res,
        _$DetailedDataPokemonEntityImpl>
    implements _$$DetailedDataPokemonEntityImplCopyWith<$Res> {
  __$$DetailedDataPokemonEntityImplCopyWithImpl(
      _$DetailedDataPokemonEntityImpl _value,
      $Res Function(_$DetailedDataPokemonEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseExperience = null,
    Object? height = null,
    Object? id = null,
    Object? name = null,
    Object? weight = null,
    Object? abilities = null,
    Object? moves = null,
  }) {
    return _then(_$DetailedDataPokemonEntityImpl(
      baseExperience: null == baseExperience
          ? _value.baseExperience
          : baseExperience // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      abilities: null == abilities
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      moves: null == moves
          ? _value._moves
          : moves // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$DetailedDataPokemonEntityImpl implements _DetailedDataPokemonEntity {
  const _$DetailedDataPokemonEntityImpl(
      {required this.baseExperience,
      required this.height,
      required this.id,
      required this.name,
      required this.weight,
      required final List<String> abilities,
      required final List<String> moves})
      : _abilities = abilities,
        _moves = moves;

  @override
  final int baseExperience;
  @override
  final int height;
  @override
  final int id;
  @override
  final String name;
  @override
  final int weight;
  final List<String> _abilities;
  @override
  List<String> get abilities {
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilities);
  }

  final List<String> _moves;
  @override
  List<String> get moves {
    if (_moves is EqualUnmodifiableListView) return _moves;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moves);
  }

  @override
  String toString() {
    return 'DetailedDataPokemonEntity(baseExperience: $baseExperience, height: $height, id: $id, name: $name, weight: $weight, abilities: $abilities, moves: $moves)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedDataPokemonEntityImpl &&
            (identical(other.baseExperience, baseExperience) ||
                other.baseExperience == baseExperience) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities) &&
            const DeepCollectionEquality().equals(other._moves, _moves));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      baseExperience,
      height,
      id,
      name,
      weight,
      const DeepCollectionEquality().hash(_abilities),
      const DeepCollectionEquality().hash(_moves));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedDataPokemonEntityImplCopyWith<_$DetailedDataPokemonEntityImpl>
      get copyWith => __$$DetailedDataPokemonEntityImplCopyWithImpl<
          _$DetailedDataPokemonEntityImpl>(this, _$identity);
}

abstract class _DetailedDataPokemonEntity implements DetailedDataPokemonEntity {
  const factory _DetailedDataPokemonEntity(
      {required final int baseExperience,
      required final int height,
      required final int id,
      required final String name,
      required final int weight,
      required final List<String> abilities,
      required final List<String> moves}) = _$DetailedDataPokemonEntityImpl;

  @override
  int get baseExperience;
  @override
  int get height;
  @override
  int get id;
  @override
  String get name;
  @override
  int get weight;
  @override
  List<String> get abilities;
  @override
  List<String> get moves;
  @override
  @JsonKey(ignore: true)
  _$$DetailedDataPokemonEntityImplCopyWith<_$DetailedDataPokemonEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
