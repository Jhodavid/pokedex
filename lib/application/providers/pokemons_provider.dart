import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:pokemon_johcode/core/domain/usecases/get_basic_data_pokemons.dart';

import 'package:pokemon_johcode/application/states/pokemons_state/pokemons_state.dart';

import 'package:pokemon_johcode/infrastructure/clients/poke_api_graphql_client.dart';
import 'package:pokemon_johcode/infrastructure/data_sources/poke_api_datasource.dart';
import 'package:pokemon_johcode/infrastructure/repositories/poke_api_repository_impl.dart';


final pokemonsProvider = StateNotifierProvider<PokemonsNotifier, PokemonsState>((ref)  {
  final getBasicDataPokemons = GetBasicDataPokemons(PokeAPIRepositoryImpl(PokemonGraphQLApi(PokeAPIGraphQLClient.client)));

  return PokemonsNotifier(getBasicDataPokemons);
});

class PokemonsNotifier  extends StateNotifier< PokemonsState> {

  final GetBasicDataPokemons getBasicDataPokemons;

  int limit = 20;
  int offset = 0;

  PokemonsNotifier(this.getBasicDataPokemons) : super(const PokemonsState()) {
    searchPokemons();
  }

  void searchPokemons() async {
    if(state.isLoading) return;
    state = state.copyWith(isLoading: true);

    try {
      final pokemons = await getBasicDataPokemons(
        limit: limit,
        offset: offset
      );

      offset = offset + limit;
      state = state.copyWith(
        pokemons: [...state.pokemons, ...pokemons],
      );
    } catch(e) {
      if(kDebugMode) print(e);
    }

    state = state.copyWith(isLoading: false);
  }

}