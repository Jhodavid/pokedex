// import 'package:graphql_flutter/graphql_flutter.dart';
// import 'package:pokemon_johcode/core/interfaces/repositories/abstract_pokemon_repository.dart';
//
// class PokeAPIRepositoryImpl implements AbstractPokemonRepository {
//   final PokemonGraphQLApi api;
//
//   PokemonRepositoryImpl(this.api);
//
//   @override
//   Future<List<BasicPokemon>> getBasicPokemons(int limit, int offset) async {
//     final apiResponse = await api.fetchBasicPokemons(limit, offset);
//     return apiResponse.results.map((e) => PokemonMapper.fromApiBasicPokemon(e)).toList();
//   }
//
//   @override
//   Future<DetailedPokemon> getDetailedPokemon(int id) async {
//     final apiResponse = await api.fetchDetailedPokemon(id);
//     return PokemonMapper.fromApiDetailedPokemon(apiResponse);
//   }
// }