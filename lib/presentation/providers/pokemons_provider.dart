
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_johcode/core/domain/entities/basic_data_pokemon/basic_data_pokemon_entity.dart';

final pokemonsProvider = StateNotifierProvider<PokemonsNotifier, PokemonsState>((ref)  {
  return PokemonsNotifier();
});

class PokemonsNotifier  extends StateNotifier< PokemonsState> {

  PokemonsNotifier() : super(PokemonsState());

}

class PokemonsState{

  final bool isLoading;
  final bool isSearchingMorePokemons;
  final List<BasicDataPokemonEntity> pokemons;

  PokemonsState({
    this.isLoading = true,
    this.isSearchingMorePokemons = false,
    this.pokemons = const []
  });

  PokemonsState copyWith({
    bool? isLoading,
    bool? isSearchingMorePokemons,
    List<BasicDataPokemonEntity>? pokemons
  }) => PokemonsState(
    isLoading: isLoading ?? this.isLoading,
    isSearchingMorePokemons: isSearchingMorePokemons ?? this.isSearchingMorePokemons,
    pokemons: pokemons ?? this.pokemons,
  );
}