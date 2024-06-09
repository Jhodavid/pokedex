import 'package:freezed_annotation/freezed_annotation.dart';

part 'basic_data_pokemon_entity.freezed.dart';

@freezed
class BasicDataPokemonEntity with _$BasicDataPokemonEntity {
  const factory BasicDataPokemonEntity({
    required int id,
    required String name,
    required String artwork,
    required String dreamworld
  }) = _BasicDataPokemonEntity;
}