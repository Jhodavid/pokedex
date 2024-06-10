
import 'package:pokemon_johcode/core/domain/entities/basic_data_pokemon/basic_data_pokemon_entity.dart';
import 'package:pokemon_johcode/core/domain/entities/detailed_data_pokemon/detailed_data_pokemon_entity.dart';
import 'package:pokemon_johcode/infrastructure/models/poke_api_detail_pokemon_response_model.dart';
import 'package:pokemon_johcode/infrastructure/models/poke_api_pokemons_response_model.dart';
import 'package:pokemon_johcode/infrastructure/models/poke_api_types_of_pokemon_response_model.dart';

class PokeApiToDomainMapper {

  static List<BasicDataPokemonEntity> fromApiBasicPokemonsResponse(PokeApiPokemonsResponseModel pokemonsResponse) {
    return List<BasicDataPokemonEntity>.from(
      pokemonsResponse.pokemons.results.map(
        (item) => BasicDataPokemonEntity(
          id: item.id,
          name: item.name,
          artwork: item.artwork,
          dreamworld: item.dreamworld
        )
      )
    );
  }

  static DetailedDataPokemonEntity fromPokeAPIDetailPokemonResponse(PokeApiDetailPokemonResponseModel detailPokemonResponse) {
    return DetailedDataPokemonEntity(
      baseExperience: detailPokemonResponse.pokemon.baseExperience,
      height: detailPokemonResponse.pokemon.height,
      id: detailPokemonResponse.pokemon.id,
      name: detailPokemonResponse.pokemon.name,
      weight: detailPokemonResponse.pokemon.weight,
      abilities: List<String>.from(
        detailPokemonResponse.pokemon.abilities.map((item) => item.ability.name),
      ),
      moves: List<String>.from(
        detailPokemonResponse.pokemon.moves.map((item) => item.move.name),
      ),
      types: List<String>.from(
        detailPokemonResponse.pokemon.types.map((item) => item.type.name),
      )
    );
  }
  static List<String> fromPokeAPITypesOfPokemonResponse(PokeApiTypesOfPokemonResponseModel typesOfPokemon) {
    return List<String>.from(
      typesOfPokemon.pokemon.types.map((item) => item.type.name),
    );
  }
}