import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:pokemon_johcode/core/domain/usecases/get_detailed_data_pokemon.dart';
import 'package:pokemon_johcode/core/domain/entities/detailed_data_pokemon/detailed_data_pokemon_entity.dart';

import 'package:pokemon_johcode/infrastructure/clients/poke_api_graphql_client.dart';
import 'package:pokemon_johcode/infrastructure/data_sources/poke_api_datasource.dart';
import 'package:pokemon_johcode/infrastructure/repositories/poke_api_repository_impl.dart';


final detailedDataPokemonProvider = FutureProvider.autoDispose.family<DetailedDataPokemonEntity, String>((ref, name) async {
  final client = PokeAPIGraphQLClient.client;
  final dataSource = PokemonGraphQLApi(client);
  final repository = PokeAPIRepositoryImpl(dataSource);
  final getDetailedDataPokemon = GetDetailedDataPokemon(repository);

  return getDetailedDataPokemon(name);
});