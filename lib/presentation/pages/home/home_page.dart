import 'package:flutter/material.dart';

import 'package:pokemon_johcode/presentation/pages/home/widgets/pokemon_card.dart';
import 'package:pokemon_johcode/core/domain/entities/basic_data_pokemon/basic_data_pokemon_entity.dart';


class HomePage extends StatelessWidget {

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              titleSpacing: 0,
              toolbarHeight: 80,
              leadingWidth: 0,
              title: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  'Pokedex',
                  style: textTheme.titleLarge,
                ),
              ),
              centerTitle: false,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: IconButton(
                    onPressed: () {

                    },
                    icon: const Icon(Icons.tune_rounded)
                  ),
                )
              ],
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              sliver: SliverGrid.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisExtent: 150
                ),
                itemBuilder: (context, index) {
                  return PokemonCard(pokemon: BasicDataPokemonEntity(
                    id: 2,
                    name: 'squirtle',
                    artwork: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/7.png',
                    dreamworld: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/7.svg'
                  ));
                },
              ),
            ),
          ],
        ),
      )
    );
  }
}