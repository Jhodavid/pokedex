import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pokemon_johcode/infrastructure/data_sources/poke_api_datasource.dart';
import 'package:pokemon_johcode/infrastructure/models/poke_api_pokemons_response_model.dart';
import 'package:pokemon_johcode/infrastructure/repositories/poke_api_repository_impl.dart';

class MockPokeApiDataSource extends Mock implements PokemonGraphQLApi {}

void main() {
  late PokeAPIRepositoryImpl repository;
  late MockPokeApiDataSource mockPokeApiDataSource;

  setUp(() {
    mockPokeApiDataSource = MockPokeApiDataSource();
    repository = PokeAPIRepositoryImpl(mockPokeApiDataSource);
  });

  test(
      'should return list of BasicDataPokemonEntity when calling getBasicDataPokemons', () async {
    final mockResponse = PokeApiPokemonsResponseModel(
      pokemons: PokeApiPokemonsModel(
        count: 0,
        next: null,
        previous: null,
        nextOffset: 0,
        prevOffset: 0,
        params: PokeApiPokemonsParamsModel(
          limit: 10,
          offset: 0,
        ),
        status: true,
        message: '',
        results: [],
      ),
    );
    when(mockPokeApiDataSource.fetchPokemons())
        .thenAnswer((_) async => mockResponse);

    final result = await repository.getBasicPokemons();

    expect(result, mockResponse);
    verify(mockPokeApiDataSource.fetchPokemons());
    verifyNoMoreInteractions(mockPokeApiDataSource);
  });
}
