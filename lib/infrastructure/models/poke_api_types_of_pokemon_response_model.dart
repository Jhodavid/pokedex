import 'dart:convert';

PokeApiTypesOfPokemonResponseModel pokeApiTypesOfPokemonResponseModelFromJson(String str) => PokeApiTypesOfPokemonResponseModel.fromJson(json.decode(str));

class PokeApiTypesOfPokemonResponseModel {
  final PokeApiTypesPokemonModel pokemon;

  PokeApiTypesOfPokemonResponseModel({
    required this.pokemon,
  });

  factory PokeApiTypesOfPokemonResponseModel.fromJson(Map<String, dynamic> json) => PokeApiTypesOfPokemonResponseModel(
    pokemon: PokeApiTypesPokemonModel.fromJson(json["pokemon"]),
  );
}

class PokeApiTypesPokemonModel {
  final List<PokeApiTypesTypeModel> types;

  PokeApiTypesPokemonModel({
    required this.types,
  });

  factory PokeApiTypesPokemonModel.fromJson(Map<String, dynamic> json) => PokeApiTypesPokemonModel(
    types: List<PokeApiTypesTypeModel>.from(json["types"].map((x) => PokeApiTypesTypeModel.fromJson(x))),
  );
}

class PokeApiTypesTypeModel {
  final PokeApiTypesTypeSubModel type;

  PokeApiTypesTypeModel({
    required this.type,
  });

  factory PokeApiTypesTypeModel.fromJson(Map<String, dynamic> json) => PokeApiTypesTypeModel(
    type: PokeApiTypesTypeSubModel.fromJson(json["type"]),
  );
}

class PokeApiTypesTypeSubModel {
  final String name;

  PokeApiTypesTypeSubModel({
    required this.name,
  });

  factory PokeApiTypesTypeSubModel.fromJson(Map<String, dynamic> json) => PokeApiTypesTypeSubModel(
    name: json["name"],
  );
}
