import 'dart:convert';

PokeApiDetailPokemonResponseModel pokeApiDetailPokemonResponseModelFromJson(String str) => PokeApiDetailPokemonResponseModel.fromJson(json.decode(str));

class PokeApiDetailPokemonResponseModel {
  final PokeApiDetailPokemonModel pokemon;

  PokeApiDetailPokemonResponseModel({
    required this.pokemon,
  });

  factory PokeApiDetailPokemonResponseModel.fromJson(Map<String, dynamic> json) => PokeApiDetailPokemonResponseModel(
    pokemon: PokeApiDetailPokemonModel.fromJson(json["pokemon"]),
  );
}

class PokeApiDetailPokemonModel {
  final int baseExperience;
  final int height;
  final int id;
  final String name;
  final int weight;
  final List<PokeApiDetailPokemonAbilityModel> abilities;
  final List<PokeApiDetailPokemonMoveModel> moves;
  final List<PokeApiTypesTypeModel> types;

  PokeApiDetailPokemonModel({
    required this.baseExperience,
    required this.height,
    required this.id,
    required this.name,
    required this.weight,
    required this.abilities,
    required this.moves,
    required this.types
  });

  factory PokeApiDetailPokemonModel.fromJson(Map<String, dynamic> json) => PokeApiDetailPokemonModel(
    baseExperience: json["base_experience"],
    height: json["height"],
    id: json["id"],
    name: json["name"],
    weight: json["weight"],
    abilities: List<PokeApiDetailPokemonAbilityModel>.from(json["abilities"].map((x) => PokeApiDetailPokemonAbilityModel.fromJson(x))),
    moves: List<PokeApiDetailPokemonMoveModel>.from(json["moves"].map((x) => PokeApiDetailPokemonMoveModel.fromJson(x))),
    types: List<PokeApiTypesTypeModel>.from(json["types"].map((x) => PokeApiTypesTypeModel.fromJson(x)))
  );
}

class PokeApiDetailPokemonAbilityModel {
  final PokeApiDetailPokemonSubModel ability;

  PokeApiDetailPokemonAbilityModel({
    required this.ability,
  });

  factory PokeApiDetailPokemonAbilityModel.fromJson(Map<String, dynamic> json) => PokeApiDetailPokemonAbilityModel(
    ability: PokeApiDetailPokemonSubModel.fromJson(json["ability"]),
  );
}

class PokeApiDetailPokemonMoveModel {
  final PokeApiDetailPokemonSubModel move;

  PokeApiDetailPokemonMoveModel({
    required this.move,
  });

  factory PokeApiDetailPokemonMoveModel.fromJson(Map<String, dynamic> json) => PokeApiDetailPokemonMoveModel(
    move: PokeApiDetailPokemonSubModel.fromJson(json["move"]),
  );
}

class PokeApiTypesTypeModel {
  final PokeApiDetailPokemonSubModel type;

  PokeApiTypesTypeModel({
    required this.type,
  });

  factory PokeApiTypesTypeModel.fromJson(Map<String, dynamic> json) => PokeApiTypesTypeModel(
    type: PokeApiDetailPokemonSubModel.fromJson(json["type"]),
  );
}

class PokeApiDetailPokemonSubModel {
  final String name;

  PokeApiDetailPokemonSubModel({
    required this.name,
  });

  factory PokeApiDetailPokemonSubModel.fromJson(Map<String, dynamic> json) => PokeApiDetailPokemonSubModel(
    name: json["name"],
  );
}
