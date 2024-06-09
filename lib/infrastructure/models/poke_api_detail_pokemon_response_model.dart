import 'dart:convert';

PokeAPI_DetailPokemonResponseModel pokeApiDetailPokemonResponseModelFromJson(String str) => PokeAPI_DetailPokemonResponseModel.fromJson(json.decode(str));

class PokeAPI_DetailPokemonResponseModel {
  final PokeAPI_DetailPokemonDataModel data;

  PokeAPI_DetailPokemonResponseModel({
    required this.data,
  });

  factory PokeAPI_DetailPokemonResponseModel.fromJson(Map<String, dynamic> json) => PokeAPI_DetailPokemonResponseModel(
    data: PokeAPI_DetailPokemonDataModel.fromJson(json["data"]),
  );
}

class PokeAPI_DetailPokemonDataModel {
  final PokeAPI_DetailPokemonModel pokemon;

  PokeAPI_DetailPokemonDataModel({
    required this.pokemon,
  });

  factory PokeAPI_DetailPokemonDataModel.fromJson(Map<String, dynamic> json) => PokeAPI_DetailPokemonDataModel(
    pokemon: PokeAPI_DetailPokemonModel.fromJson(json["pokemon"]),
  );
}

class PokeAPI_DetailPokemonModel {
  final int baseExperience;
  final int height;
  final int id;
  final String name;
  final int weight;
  final List<PokeAPI_DetailPokemonAbilityModel> abilities;
  final List<PokeAPI_DetailPokemonMoveModel> moves;

  PokeAPI_DetailPokemonModel({
    required this.baseExperience,
    required this.height,
    required this.id,
    required this.name,
    required this.weight,
    required this.abilities,
    required this.moves,
  });

  factory PokeAPI_DetailPokemonModel.fromJson(Map<String, dynamic> json) => PokeAPI_DetailPokemonModel(
    baseExperience: json["base_experience"],
    height: json["height"],
    id: json["id"],
    name: json["name"],
    weight: json["weight"],
    abilities: List<PokeAPI_DetailPokemonAbilityModel>.from(json["abilities"].map((x) => PokeAPI_DetailPokemonAbilityModel.fromJson(x))),
    moves: List<PokeAPI_DetailPokemonMoveModel>.from(json["moves"].map((x) => PokeAPI_DetailPokemonMoveModel.fromJson(x))),
  );
}

class PokeAPI_DetailPokemonAbilityModel {
  final PokeAPI_DetailPokemonAbilityMoveSubModel ability;

  PokeAPI_DetailPokemonAbilityModel({
    required this.ability,
  });

  factory PokeAPI_DetailPokemonAbilityModel.fromJson(Map<String, dynamic> json) => PokeAPI_DetailPokemonAbilityModel(
    ability: PokeAPI_DetailPokemonAbilityMoveSubModel.fromJson(json["ability"]),
  );
}

class PokeAPI_DetailPokemonMoveModel {
  final PokeAPI_DetailPokemonAbilityMoveSubModel move;

  PokeAPI_DetailPokemonMoveModel({
    required this.move,
  });

  factory PokeAPI_DetailPokemonMoveModel.fromJson(Map<String, dynamic> json) => PokeAPI_DetailPokemonMoveModel(
    move: PokeAPI_DetailPokemonAbilityMoveSubModel.fromJson(json["move"]),
  );
}

class PokeAPI_DetailPokemonAbilityMoveSubModel {
  final String name;

  PokeAPI_DetailPokemonAbilityMoveSubModel({
    required this.name,
  });

  factory PokeAPI_DetailPokemonAbilityMoveSubModel.fromJson(Map<String, dynamic> json) => PokeAPI_DetailPokemonAbilityMoveSubModel(
    name: json["name"],
  );
}
