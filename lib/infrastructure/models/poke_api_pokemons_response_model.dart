import 'dart:convert';

PokeApiPokemonsResponseModel pokeApiPokemonsResponseModelFromJson(String str) => PokeApiPokemonsResponseModel.fromJson(json.decode(str));

class PokeApiPokemonsResponseModel {
  final PokeApiPokemonsModel pokemons;

  PokeApiPokemonsResponseModel({
    required this.pokemons,
  });

  factory PokeApiPokemonsResponseModel.fromJson(Map<String, dynamic> json) => PokeApiPokemonsResponseModel(
    pokemons: PokeApiPokemonsModel.fromJson(json["pokemons"]),
  );
}

class PokeApiPokemonsModel {
  final int count;
  final String? next;
  final String? previous;
  final int nextOffset;
  final int prevOffset;
  final PokeApiPokemonsParamsModel params;
  final bool status;
  final String message;
  final List<PokeApiPokemonsPokemonModel> results;

  PokeApiPokemonsModel({
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

  factory PokeApiPokemonsModel.fromJson(Map<String, dynamic> json) => PokeApiPokemonsModel(
    count: json["count"],
    next: json["next"],
    previous: json["previous"],
    nextOffset: json["nextOffset"],
    prevOffset: json["prevOffset"],
    params: PokeApiPokemonsParamsModel.fromJson(json["params"]),
    status: json["status"],
    message: json["message"],
    results: List<PokeApiPokemonsPokemonModel>.from(json["results"].map((x) => PokeApiPokemonsPokemonModel.fromJson(x))),
  );
}

class PokeApiPokemonsParamsModel {
  final int limit;
  final int offset;

  PokeApiPokemonsParamsModel({
    required this.limit,
    required this.offset,
  });

  factory PokeApiPokemonsParamsModel.fromJson(Map<String, dynamic> json) => PokeApiPokemonsParamsModel(
    limit: json["limit"],
    offset: json["offset"],
  );
}

class PokeApiPokemonsPokemonModel {
  final int id;
  final String url;
  final String name;
  final String image;
  final String artwork;
  final String dreamworld;

  PokeApiPokemonsPokemonModel({
    required this.id,
    required this.url,
    required this.name,
    required this.image,
    required this.artwork,
    required this.dreamworld,
  });

  factory PokeApiPokemonsPokemonModel.fromJson(Map<String, dynamic> json) => PokeApiPokemonsPokemonModel(
    id: json["id"],
    url: json["url"],
    name: json["name"],
    image: json["image"],
    artwork: json["artwork"],
    dreamworld: json["dreamworld"],
  );
}
