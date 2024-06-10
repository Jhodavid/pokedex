// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemons_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PokemonsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<BasicDataPokemonEntity> get pokemons =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PokemonsStateCopyWith<PokemonsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonsStateCopyWith<$Res> {
  factory $PokemonsStateCopyWith(
          PokemonsState value, $Res Function(PokemonsState) then) =
      _$PokemonsStateCopyWithImpl<$Res, PokemonsState>;
  @useResult
  $Res call({bool isLoading, List<BasicDataPokemonEntity> pokemons});
}

/// @nodoc
class _$PokemonsStateCopyWithImpl<$Res, $Val extends PokemonsState>
    implements $PokemonsStateCopyWith<$Res> {
  _$PokemonsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? pokemons = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      pokemons: null == pokemons
          ? _value.pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<BasicDataPokemonEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonsStateImplCopyWith<$Res>
    implements $PokemonsStateCopyWith<$Res> {
  factory _$$PokemonsStateImplCopyWith(
          _$PokemonsStateImpl value, $Res Function(_$PokemonsStateImpl) then) =
      __$$PokemonsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<BasicDataPokemonEntity> pokemons});
}

/// @nodoc
class __$$PokemonsStateImplCopyWithImpl<$Res>
    extends _$PokemonsStateCopyWithImpl<$Res, _$PokemonsStateImpl>
    implements _$$PokemonsStateImplCopyWith<$Res> {
  __$$PokemonsStateImplCopyWithImpl(
      _$PokemonsStateImpl _value, $Res Function(_$PokemonsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? pokemons = null,
  }) {
    return _then(_$PokemonsStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      pokemons: null == pokemons
          ? _value._pokemons
          : pokemons // ignore: cast_nullable_to_non_nullable
              as List<BasicDataPokemonEntity>,
    ));
  }
}

/// @nodoc

class _$PokemonsStateImpl implements _PokemonsState {
  const _$PokemonsStateImpl(
      {this.isLoading = false,
      final List<BasicDataPokemonEntity> pokemons = const []})
      : _pokemons = pokemons;

  @override
  @JsonKey()
  final bool isLoading;
  final List<BasicDataPokemonEntity> _pokemons;
  @override
  @JsonKey()
  List<BasicDataPokemonEntity> get pokemons {
    if (_pokemons is EqualUnmodifiableListView) return _pokemons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokemons);
  }

  @override
  String toString() {
    return 'PokemonsState(isLoading: $isLoading, pokemons: $pokemons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonsStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._pokemons, _pokemons));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_pokemons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonsStateImplCopyWith<_$PokemonsStateImpl> get copyWith =>
      __$$PokemonsStateImplCopyWithImpl<_$PokemonsStateImpl>(this, _$identity);
}

abstract class _PokemonsState implements PokemonsState {
  const factory _PokemonsState(
      {final bool isLoading,
      final List<BasicDataPokemonEntity> pokemons}) = _$PokemonsStateImpl;

  @override
  bool get isLoading;
  @override
  List<BasicDataPokemonEntity> get pokemons;
  @override
  @JsonKey(ignore: true)
  _$$PokemonsStateImplCopyWith<_$PokemonsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
