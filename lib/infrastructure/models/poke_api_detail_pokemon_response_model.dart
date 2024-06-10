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
  final List<_PokeApiTypesTypeModel> types;

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
    abilities: List<_PokeApiDetailPokemonAbilityModel>.from(json["abilities"].map((x) => _PokeApiDetailPokemonAbilityModel.fromJson(x))),
    moves: List<_PokeApiDetailPokemonMoveModel>.from(json["moves"].map((x) => _PokeApiDetailPokemonMoveModel.fromJson(x))),
    types: List<_PokeApiTypesTypeModel>.from(json["types"].map((x) => _PokeApiTypesTypeModel.fromJson(x)))
  );
}

class _PokeApiDetailPokemonAbilityModel {
  final _PokeApiDetailPokemonSubModel ability;

  _PokeApiDetailPokemonAbilityModel({
    required this.ability,
  });

  factory _PokeApiDetailPokemonAbilityModel.fromJson(Map<String, dynamic> json) => _PokeApiDetailPokemonAbilityModel(
    ability: _PokeApiDetailPokemonSubModel.fromJson(json["ability"]),
  );
}

class _PokeApiDetailPokemonMoveModel {
  final _PokeApiDetailPokemonSubModel move;

  _PokeApiDetailPokemonMoveModel({
    required this.move,
  });

  factory _PokeApiDetailPokemonMoveModel.fromJson(Map<String, dynamic> json) => _PokeApiDetailPokemonMoveModel(
    move: _PokeApiDetailPokemonSubModel.fromJson(json["move"]),
  );
}

class _PokeApiTypesTypeModel {
  final _PokeApiDetailPokemonSubModel type;

  _PokeApiTypesTypeModel({
    required this.type,
  });

  factory _PokeApiTypesTypeModel.fromJson(Map<String, dynamic> json) => _PokeApiTypesTypeModel(
    type: _PokeApiDetailPokemonSubModel.fromJson(json["type"]),
  );
}

class _PokeApiDetailPokemonSubModel {
  final String name;

  _PokeApiDetailPokemonSubModel({
    required this.name,
  });

  factory _PokeApiDetailPokemonSubModel.fromJson(Map<String, dynamic> json) => _PokeApiDetailPokemonSubModel(
    name: json["name"],
  );
}
