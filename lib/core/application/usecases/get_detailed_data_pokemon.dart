
import 'package:pokemon_johcode/core/domain/entities/detailed_data_pokemon/detailed_data_pokemon_entity.dart';
import 'package:pokemon_johcode/core/interfaces/repositories/abstract_pokemon_repository.dart';

class GetDetailedDataPokemon {
  final AbstractPokemonRepository pokemonRepository;

  GetDetailedDataPokemon(this.pokemonRepository);

  Future<DetailedDataPokemonEntity> call(String name) {
    return pokemonRepository.getDetailedPokemon(name);
  }
}