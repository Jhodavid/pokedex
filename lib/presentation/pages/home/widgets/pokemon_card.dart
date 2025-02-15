import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


import 'package:pokemon_johcode/core/utils/string_utils.dart';
import 'package:pokemon_johcode/core/domain/services/type_color_mapper.dart';
import 'package:pokemon_johcode/core/domain/usecases/get_types_of_pokemon.dart';
import 'package:pokemon_johcode/core/domain/entities/basic_data_pokemon/basic_data_pokemon_entity.dart';

import 'package:pokemon_johcode/application/router/app_routes_enum.dart';
import 'package:pokemon_johcode/presentation/widgets/pokemon_attribute_label.dart';
import 'package:pokemon_johcode/infrastructure/clients/poke_api_graphql_client.dart';
import 'package:pokemon_johcode/infrastructure/data_sources/poke_api_datasource.dart';
import 'package:pokemon_johcode/infrastructure/repositories/poke_api_repository_impl.dart';


class PokemonCard extends StatelessWidget {

  final BasicDataPokemonEntity pokemon;

  const PokemonCard({
    super.key,
    required this.pokemon,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final getTypesOfPokemon = GetTypesOfPokemon(PokeAPIRepositoryImpl(PokemonGraphQLApi(PokeAPIGraphQLClient.client)));

    return FutureBuilder(
      future: getTypesOfPokemon(pokemon.name),
      builder: (context, snapshot) {
        return Card(
          color: TypeColorMapper.getColorForType(snapshot.data ?? []),
          child: Stack(
            children: [
              if(!snapshot.hasData) LinearProgressIndicator(
                borderRadius: BorderRadius.circular(15),
                minHeight: 150,
                color: Colors.grey.withOpacity(0.5),
                backgroundColor: Colors.transparent,
              ),
              InkWell(
                borderRadius: BorderRadius.circular(15),
                onTap: () => context.push(
                  AppRoutesEnum.detail.path.replaceAll(':name', pokemon.name),
                  extra: pokemon.artwork
                ),
                child: Stack(
                  children: [
                    Container(
                      height: 250,
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(top: 10, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          Text(
                            StringUtils.capitalize(pokemon.name),
                            style: textTheme.labelLarge,
                          ),
                          const SizedBox(height: 8),
                          if(snapshot.data != null) ...List<Widget>.from(
                              snapshot.data!.map((type) => PokemonAttributeLabel(StringUtils.capitalize(type))
                            )
                          )
                        ]
                      )
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        padding: const EdgeInsets.only(bottom: 10, right: 10),
                        width: 100,
                        height: 100,
                        child: Image.network(
                          pokemon.artwork,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(Icons.warning_rounded, color: Colors.red);
                          },
                        )
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
