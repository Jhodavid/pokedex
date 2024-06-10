import 'package:pokemon_johcode/core/interfaces/repositories/abstract_pokemon_repository.dart';
import 'package:pokemon_johcode/core/domain/entities/basic_data_pokemon/basic_data_pokemon_entity.dart';
import 'package:pokemon_johcode/core/domain/entities/detailed_data_pokemon/detailed_data_pokemon_entity.dart';

import 'package:pokemon_johcode/infrastructure/data_sources/poke_api_datasource.dart';
import 'package:pokemon_johcode/infrastructure/mappers/poke_api_to_domain_mapper.dart';


class PokeAPIRepositoryImpl implements AbstractPokemonRepository {
  final PokemonGraphQLApi api;

  PokeAPIRepositoryImpl(this.api);

  @override
  Future<List<BasicDataPokemonEntity>> getBasicPokemons({
    int? limit,
    int? offset
  }) async {
    final response = await api.fetchPokemons(limit: limit, offset: offset);
    return PokeApiToDomainMapper.fromApiBasicPokemonsResponse(response);
  }

  @override
  Future<DetailedDataPokemonEntity> getDetailedPokemon(String name) async {
    final response = await api.fetchDetailedPokemon(name);
    return PokeApiToDomainMapper.fromPokeAPIDetailPokemonResponse(response);
  }

  @override
  Future<List<String>> getTypesOfPokemon(String name) async {
    final response = await api.fetchTypesOfPokemon(name);
    return PokeApiToDomainMapper.fromPokeAPITypesOfPokemonResponse(response);
  }
}