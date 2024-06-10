import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:pokemon_johcode/infrastructure/models/poke_api_detail_pokemon_response_model.dart';
import 'package:pokemon_johcode/infrastructure/models/poke_api_pokemons_response_model.dart';
import 'package:pokemon_johcode/infrastructure/models/poke_api_types_of_pokemon_response_model.dart';

class PokemonGraphQLApi {
  final GraphQLClient client;

  PokemonGraphQLApi(this.client);

  Future<PokeApiPokemonsResponseModel> fetchPokemons({int? limit, int? offset}) async {
    try {
      const String query = '''
      query pokemons(\$limit: Int, \$offset: Int) {
        pokemons(limit: \$limit, offset: \$offset) {
          count
          next
          previous
          nextOffset
          prevOffset
          params
          status
          message
          results {
            id
            url
            name
            image
            artwork
            dreamworld
          }
        }
      }
    ''';

      final result = await client.query(QueryOptions(
        document: gql(query),
        variables: {
          'limit': limit,
          'offset': offset,
        },
      ));

      if (result.hasException) {
        if(kDebugMode) print(result.exception.toString());
        throw Exception(result.exception.toString());
      }

      if(result.data == null) {
        throw Exception("No data - fetchPokemons");
      }

      return PokeApiPokemonsResponseModel.fromJson(result.data!);
    } catch(e) {
      if (kDebugMode) {
        print(e);
      }
      throw Exception("fetchPokemons: $e");
    }
  }


  Future<PokeApiDetailPokemonResponseModel> fetchDetailedPokemon(String name) async {
    const String query = '''
      query Pokemon(\$name: String!)  {
        pokemon(name: \$name) {
          base_experience
          height
          id
          name
          weight
          abilities {
            ability {
              name
            }
          }
          moves {
            move {
              name
            }
          }
          types {
            type {
              name
            }
          }
        }
      }
    ''';

    final result = await client.query(QueryOptions(
      document: gql(query),
      variables: {'name': name},
    ));

    if (result.hasException) {
      if(kDebugMode) print(result.exception.toString());
      throw Exception(result.exception.toString());
    }

    if(result.data == null) {
      throw Exception("No data - fetchDetailedPokemon");
    }

    return PokeApiDetailPokemonResponseModel.fromJson(result.data!);
  }

  Future<PokeApiTypesOfPokemonResponseModel> fetchTypesOfPokemon(String name) async {
    const String query = '''
      query Pokemon(\$name: String!)  {
        pokemon(name: \$name) {
          types {
            type {
              name
            }
          }
        }
      }
    ''';

    final result = await client.query(QueryOptions(
      document: gql(query),
      variables: {'name': name},
    ));

    if (result.hasException) {
      if(kDebugMode) print(result.exception.toString());
      throw Exception(result.exception.toString());
    }

    if(result.data == null) {
      throw Exception("No data - fetchDetailedPokemon");
    }

    return PokeApiTypesOfPokemonResponseModel.fromJson(result.data!);
  }
}
