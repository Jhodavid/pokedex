// // lib/infrastructure/data_sources/pokemon_graphql_api.dart
//
// import 'package:graphql_flutter/graphql_flutter.dart';
// import 'package:pokemon_johcode/infrastructure/models/poke_api_pokemons_response_model.dart';
//
// class PokemonGraphQLApi {
//   final GraphQLClient client;
//
//   PokemonGraphQLApi(this.client);
//
//   Future<PokeAPI_PokemonsResponseModel> fetchPokemons({int? limit, int? offset}) async {
//     final String query = '''
//       query Pokemons {
//         pokemons(limit: $limit, offset: $offset) {
//           count
//           next
//           previous
//           nextOffset
//           prevOffset
//           params
//           status
//           message
//           results {
//             id
//             url
//             name
//             image
//             artwork
//             dreamworld
//           }
//         }
//       }
//     ''';
//
//     final result = await client.query(QueryOptions(
//       document: gql(query),
//       variables: {
//         'limit': limit,
//         'offset': offset,
//       },
//     ));
//
//     if (result.hasException) {
//       throw Exception(result.exception.toString());
//     }
//
//     return PokeAPI_PokemonsResponseModel.fromJson(result.data!['pokemons']);
//   }
//
//
//   Future<ApiDetailedPokemonResponse> fetchDetailedPokemon(int id) async {
//     const String query = '''
//       query pokemon(\$id: Int!) {
//         pokemon(id: \$id) {
//           id
//           name
//           url
//           image
//           artwork
//           dreamworld
//         }
//       }
//     ''';
//
//     final result = await client.query(QueryOptions(
//       document: gql(query),
//       variables: {'id': id},
//     ));
//
//     if (result.hasException) {
//       throw Exception(result.exception.toString());
//     }
//
//     return ApiDetailedPokemonResponse.fromJson(result.data!['pokemon']);
//   }
// }
