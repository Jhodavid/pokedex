import 'dart:convert';

PokeAPI_PokemonsResponseModel pokeApiPokemonsResponseModelFromJson(String str) => PokeAPI_PokemonsResponseModel.fromJson(json.decode(str));

class PokeAPI_PokemonsResponseModel {
  final PokeAPI_PokemonsData data;

  PokeAPI_PokemonsResponseModel({
    required this.data,
  });

  factory PokeAPI_PokemonsResponseModel.fromJson(Map<String, dynamic> json) => PokeAPI_PokemonsResponseModel(
    data: PokeAPI_PokemonsData.fromJson(json["data"]),
  );
}

class PokeAPI_PokemonsData {
  final PokeApi_PokemonsModel pokemons;

  PokeAPI_PokemonsData({
    required this.pokemons,
  });

  factory PokeAPI_PokemonsData.fromJson(Map<String, dynamic> json) => PokeAPI_PokemonsData(
    pokemons: PokeApi_PokemonsModel.fromJson(json["pokemons"]),
  );
}

class PokeApi_PokemonsModel {
  final int count;
  final String next;
  final String previous;
  final int nextOffset;
  final int prevOffset;
  final PokeAPI_PokemonsParamsModel params;
  final bool status;
  final String message;
  final List<PokeApi_Pokemons_PokemonModel> results;

  PokeApi_PokemonsModel({
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

  factory PokeApi_PokemonsModel.fromJson(Map<String, dynamic> json) => PokeApi_PokemonsModel(
    count: json["count"],
    next: json["next"],
    previous: json["previous"],
    nextOffset: json["nextOffset"],
    prevOffset: json["prevOffset"],
    params: PokeAPI_PokemonsParamsModel.fromJson(json["params"]),
    status: json["status"],
    message: json["message"],
    results: List<PokeApi_Pokemons_PokemonModel>.from(json["results"].map((x) => PokeApi_Pokemons_PokemonModel.fromJson(x))),
  );
}

class PokeAPI_PokemonsParamsModel {
  final int limit;
  final int offset;

  PokeAPI_PokemonsParamsModel({
    required this.limit,
    required this.offset,
  });

  factory PokeAPI_PokemonsParamsModel.fromJson(Map<String, dynamic> json) => PokeAPI_PokemonsParamsModel(
    limit: json["limit"],
    offset: json["offset"],
  );
}

class PokeApi_Pokemons_PokemonModel {
  final int id;
  final String url;
  final String name;
  final String image;
  final String artwork;
  final String dreamworld;

  PokeApi_Pokemons_PokemonModel({
    required this.id,
    required this.url,
    required this.name,
    required this.image,
    required this.artwork,
    required this.dreamworld,
  });

  factory PokeApi_Pokemons_PokemonModel.fromJson(Map<String, dynamic> json) => PokeApi_Pokemons_PokemonModel(
    id: json["id"],
    url: json["url"],
    name: json["name"],
    image: json["image"],
    artwork: json["artwork"],
    dreamworld: json["dreamworld"],
  );
}
