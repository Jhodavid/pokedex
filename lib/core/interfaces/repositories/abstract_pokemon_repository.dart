
import 'package:pokemon_johcode/core/domain/entities/basic_data_pokemon/basic_data_pokemon_entity.dart';
import 'package:pokemon_johcode/core/domain/entities/detailed_data_pokemon/detailed_data_pokemon_entity.dart';

abstract class AbstractPokemonRepository {
  Future<List<BasicDataPokemonEntity>> getBasicPokemons({
    int? limit,
    int? offset
  });
  Future<DetailedDataPokemonEntity> getDetailedPokemon(String name);
  Future<List<String>> getTypesOfPokemon(String name);
}