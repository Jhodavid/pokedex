import 'dart:convert';

PokeApiDetailPokemonResponseModel pokeApiDetailPokemonResponseModelFromJson(String str) => PokeApiDetailPokemonResponseModel.fromJson(json.decode(str));

class PokeApiDetailPokemonResponseModel {
  final PokeApiDetailPokemonDataModel data;

  PokeApiDetailPokemonResponseModel({
    required this.data,
  });

  factory PokeApiDetailPokemonResponseModel.fromJson(Map<String, dynamic> json) => PokeApiDetailPokemonResponseModel(
    data: PokeApiDetailPokemonDataModel.fromJson(json["data"]),
  );
}

class PokeApiDetailPokemonDataModel {
  final PokeApiDetailPokemonModel pokemon;

  PokeApiDetailPokemonDataModel({
    required this.pokemon,
  });

  factory PokeApiDetailPokemonDataModel.fromJson(Map<String, dynamic> json) => PokeApiDetailPokemonDataModel(
    pokemon: PokeApiDetailPokemonModel.fromJson(json["pokemon"]),
  );
}

class PokeApiDetailPokemonModel {
  final int baseExperience;
  final int height;
  final int id;
  final String name;
  final int weight;
  final List<_PokeApiDetailPokemonAbilityModel> abilities;
  final List<_PokeApiDetailPokemonMoveModel> moves;

  PokeApiDetailPokemonModel({
    required this.baseExperience,
    required this.height,
    required this.id,
    required this.name,
    required this.weight,
    required this.abilities,
    required this.moves,
  });

  factory PokeApiDetailPokemonModel.fromJson(Map<String, dynamic> json) => PokeApiDetailPokemonModel(
    baseExperience: json["base_experience"],
    height: json["height"],
    id: json["id"],
    name: json["name"],
    weight: json["weight"],
    abilities: List<_PokeApiDetailPokemonAbilityModel>.from(json["abilities"].map((x) => _PokeApiDetailPokemonAbilityModel.fromJson(x))),
    moves: List<_PokeApiDetailPokemonMoveModel>.from(json["moves"].map((x) => _PokeApiDetailPokemonMoveModel.fromJson(x))),
  );
}

class _PokeApiDetailPokemonAbilityModel {
  final _PokeApiDetailPokemonAbilityMoveSubModel ability;

  _PokeApiDetailPokemonAbilityModel({
    required this.ability,
  });

  factory _PokeApiDetailPokemonAbilityModel.fromJson(Map<String, dynamic> json) => _PokeApiDetailPokemonAbilityModel(
    ability: _PokeApiDetailPokemonAbilityMoveSubModel.fromJson(json["ability"]),
  );
}

class _PokeApiDetailPokemonMoveModel {
  final _PokeApiDetailPokemonAbilityMoveSubModel move;

  _PokeApiDetailPokemonMoveModel({
    required this.move,
  });

  factory _PokeApiDetailPokemonMoveModel.fromJson(Map<String, dynamic> json) => _PokeApiDetailPokemonMoveModel(
    move: _PokeApiDetailPokemonAbilityMoveSubModel.fromJson(json["move"]),
  );
}

class _PokeApiDetailPokemonAbilityMoveSubModel {
  final String name;

  _PokeApiDetailPokemonAbilityMoveSubModel({
    required this.name,
  });

  factory _PokeApiDetailPokemonAbilityMoveSubModel.fromJson(Map<String, dynamic> json) => _PokeApiDetailPokemonAbilityMoveSubModel(
    name: json["name"],
  );
}
