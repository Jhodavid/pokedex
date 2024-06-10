import 'dart:convert';

PokeApiPokemonsResponseModel pokeApiPokemonsResponseModelFromJson(String str) => PokeApiPokemonsResponseModel.fromJson(json.decode(str));

class PokeApiPokemonsResponseModel {
  final _PokeApiPokemonsModel pokemons;

  PokeApiPokemonsResponseModel({
    required this.pokemons,
  });

  factory PokeApiPokemonsResponseModel.fromJson(Map<String, dynamic> json) => PokeApiPokemonsResponseModel(
    pokemons: _PokeApiPokemonsModel.fromJson(json["pokemons"]),
  );
}

class _PokeApiPokemonsModel {
  final int count;
  final String? next;
  final String? previous;
  final int nextOffset;
  final int prevOffset;
  final _PokeApiPokemonsParamsModel params;
  final bool status;
  final String message;
  final List<_PokeApiPokemonsPokemonModel> results;

  _PokeApiPokemonsModel({
    required this.count,
    required this.next,
    required this.previous,
    required this.nextOffset,
    required this.prevOffset,
    required this.params,
    required this.status,
    required this.message,
    required this.results,
  });

  factory _PokeApiPokemonsModel.fromJson(Map<String, dynamic> json) => _PokeApiPokemonsModel(
    count: json["count"],
    next: json["next"],
    previous: json["previous"],
    nextOffset: json["nextOffset"],
    prevOffset: json["prevOffset"],
    params: _PokeApiPokemonsParamsModel.fromJson(json["params"]),
    status: json["status"],
    message: json["message"],
    results: List<_PokeApiPokemonsPokemonModel>.from(json["results"].map((x) => _PokeApiPokemonsPokemonModel.fromJson(x))),
  );
}

class _PokeApiPokemonsParamsModel {
  final int limit;
  final int offset;

  _PokeApiPokemonsParamsModel({
    required this.limit,
    required this.offset,
  });

  factory _PokeApiPokemonsParamsModel.fromJson(Map<String, dynamic> json) => _PokeApiPokemonsParamsModel(
    limit: json["limit"],
    offset: json["offset"],
  );
}

class _PokeApiPokemonsPokemonModel {
  final int id;
  final String url;
  final String name;
  final String image;
  final String artwork;
  final String dreamworld;

  _PokeApiPokemonsPokemonModel({
    required this.id,
    required this.url,
    required this.name,
    required this.image,
    required this.artwork,
    required this.dreamworld,
  });

  factory _PokeApiPokemonsPokemonModel.fromJson(Map<String, dynamic> json) => _PokeApiPokemonsPokemonModel(
    id: json["id"],
    url: json["url"],
    name: json["name"],
    image: json["image"],
    artwork: json["artwork"],
    dreamworld: json["dreamworld"],
  );
}
