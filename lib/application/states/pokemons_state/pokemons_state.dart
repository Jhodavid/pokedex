import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:pokemon_johcode/core/domain/entities/basic_data_pokemon/basic_data_pokemon_entity.dart';


part 'pokemons_state.freezed.dart';

@freezed
class PokemonsState with _$PokemonsState {
  const factory PokemonsState({
    @Default(false) bool isLoading,
    @Default([]) List<BasicDataPokemonEntity> pokemons,
  }) = _PokemonsState;
}