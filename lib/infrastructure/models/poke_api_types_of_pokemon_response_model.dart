import 'dart:convert';

PokeApiTypesOfPokemonResponseModel pokeApiTypesOfPokemonResponseModelFromJson(String str) => PokeApiTypesOfPokemonResponseModel.fromJson(json.decode(str));

class PokeApiTypesOfPokemonResponseModel {
  final _PokeApiTypesPokemonModel pokemon;

  PokeApiTypesOfPokemonResponseModel({
    required this.pokemon,
  });

  factory PokeApiTypesOfPokemonResponseModel.fromJson(Map<String, dynamic> json) => PokeApiTypesOfPokemonResponseModel(
    pokemon: _PokeApiTypesPokemonModel.fromJson(json["pokemon"]),
  );
}

class _PokeApiTypesPokemonModel {
  final List<_PokeApiTypesTypeModel> types;

  _PokeApiTypesPokemonModel({
    required this.types,
  });

  factory _PokeApiTypesPokemonModel.fromJson(Map<String, dynamic> json) => _PokeApiTypesPokemonModel(
    types: List<_PokeApiTypesTypeModel>.from(json["types"].map((x) => _PokeApiTypesTypeModel.fromJson(x))),
  );
}

class _PokeApiTypesTypeModel {
  final _PokeApiTypesTypeSubModel type;

  _PokeApiTypesTypeModel({
    required this.type,
  });

  factory _PokeApiTypesTypeModel.fromJson(Map<String, dynamic> json) => _PokeApiTypesTypeModel(
    type: _PokeApiTypesTypeSubModel.fromJson(json["type"]),
  );
}

class _PokeApiTypesTypeSubModel {
  final String name;

  _PokeApiTypesTypeSubModel({
    required this.name,
  });

  factory _PokeApiTypesTypeSubModel.fromJson(Map<String, dynamic> json) => _PokeApiTypesTypeSubModel(
    name: json["name"],
  );
}
