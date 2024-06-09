
import 'package:pokemon_johcode/core/domain/entities/basic_data_pokemon/basic_data_pokemon_entity.dart';
import 'package:pokemon_johcode/core/domain/entities/detailed_data_pokemon/detailed_data_pokemon_entity.dart';
import 'package:pokemon_johcode/infrastructure/models/poke_api_detail_pokemon_response_model.dart';
import 'package:pokemon_johcode/infrastructure/models/poke_api_pokemons_response_model.dart';

class PokeApiToDomainMapper {

  static List<BasicDataPokemonEntity> fromApiBasicPokemonsResponse(PokeAPI_PokemonsResponseModel pokemonsResponse) {
    return List<BasicDataPokemonEntity>.from(
      pokemonsResponse.data.pokemons.results.map(
        (item) => BasicDataPokemonEntity(
          id: item.id,
          name: item.name,
          artwork: item.artwork,
          dreamworld: item.dreamworld
        )
      )
    );
  }

  static DetailedDataPokemonEntity fromPokeAPIDetailPokemonResponse(PokeAPI_DetailPokemonResponseModel detailPokemonResponse) {
    return DetailedDataPokemonEntity(
      baseExperience: detailPokemonResponse.data.pokemon.baseExperience,
      height: detailPokemonResponse.data.pokemon.height,
      id: detailPokemonResponse.data.pokemon.id,
      name: detailPokemonResponse.data.pokemon.name,
      weight: detailPokemonResponse.data.pokemon.weight,
      abilities: List<String>.from(
        detailPokemonResponse.data.pokemon.abilities.map((item) => item.ability.name),
      ),
      moves: List<String>.from(
        detailPokemonResponse.data.pokemon.moves.map((item) => item.move.name),
      )
    );
  }
}