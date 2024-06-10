
import 'package:pokemon_johcode/core/domain/entities/basic_data_pokemon/basic_data_pokemon_entity.dart';
import 'package:pokemon_johcode/core/interfaces/repositories/abstract_pokemon_repository.dart';

class GetBasicDataPokemons {
  final AbstractPokemonRepository pokemonRepository;

  GetBasicDataPokemons(this.pokemonRepository);

  Future<List<BasicDataPokemonEntity>> call({ int? limit, int? offset }) {
    return pokemonRepository.getBasicPokemons(limit: limit, offset: offset);
  }
}