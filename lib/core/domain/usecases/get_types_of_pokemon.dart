

import 'package:pokemon_johcode/core/domain/repositories/abstract_pokemon_repository.dart';

class GetTypesOfPokemon {
  final AbstractPokemonRepository pokemonRepository;

  GetTypesOfPokemon(this.pokemonRepository);

  Future<List<String>> call(String name) {
    return pokemonRepository.getTypesOfPokemon(name);
  }
}