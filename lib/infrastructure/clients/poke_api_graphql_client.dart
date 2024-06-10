import 'package:graphql_flutter/graphql_flutter.dart';

class PokeAPIGraphQLClient {
  static final HttpLink httpLink = HttpLink('https://graphql-pokeapi.vercel.app/api/graphql');

  static late final GraphQLClient _client;
  static void initClient () {
    _client = GraphQLClient(
      cache: GraphQLCache(store: HiveStore()),
      link: httpLink,
    );
  }

  static GraphQLClient get client => _client;
}