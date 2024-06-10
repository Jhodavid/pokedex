import 'package:flutter_test/flutter_test.dart';
import 'package:pokemon_johcode/core/domain/entities/basic_data_pokemon/basic_data_pokemon_entity.dart';

void main() {
  test('BasicDataPokemonEntity should be instantiated correctly', () {
    const pokemon = BasicDataPokemonEntity(
      id: 1,
      name: 'Bulbasaur',
      dreamworld: '',
      artwork: ''
    );

    expect(pokemon.id, 1);
    expect(pokemon.name, 'Bulbasaur');
    expect(pokemon.dreamworld, '');
    expect(pokemon.artwork, '');
  });
}
