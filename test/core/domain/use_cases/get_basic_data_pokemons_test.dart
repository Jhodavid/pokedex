import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pokemon_johcode/core/domain/repositories/abstract_pokemon_repository.dart';
import 'package:pokemon_johcode/core/domain/usecases/get_basic_data_pokemons.dart';

class MockPokemonRepository extends Mock implements AbstractPokemonRepository {}

void main() {
  late GetBasicDataPokemons useCase;
  late MockPokemonRepository mockPokemonRepository;

  setUp(() {
    mockPokemonRepository = MockPokemonRepository();
    useCase = GetBasicDataPokemons(mockPokemonRepository);
  });

  test('should get basic data of pokemons from the repository', () async {
    when(mockPokemonRepository.getBasicPokemons())
        .thenAnswer((_) async => []);

    final result = await useCase();
    print('result');
    print(result);

    expect(result, []);
    verify(mockPokemonRepository.getBasicPokemons());
    verifyNoMoreInteractions(mockPokemonRepository);
  });
}
