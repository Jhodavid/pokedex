import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed_data_pokemon_entity.freezed.dart';

@freezed
class DetailedDataPokemonEntity with _$DetailedDataPokemonEntity {
  const factory DetailedDataPokemonEntity({
    required int baseExperience,
    required int height,
    required int id,
    required String name,
    required int weight,
    required List<String> abilities,
    required List<String> moves,
    required List<String> types

  }) = _DetailedDataPokemonEntity;
}