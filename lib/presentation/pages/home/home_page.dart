import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:pokemon_johcode/application/providers/pokemons_provider.dart';

import 'package:pokemon_johcode/presentation/pages/home/widgets/pokemon_card.dart';


class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (
      _scrollController.offset >= (_scrollController.position.maxScrollExtent * 0.9) &&
      !_scrollController.position.outOfRange
    ) {
      ref.read(pokemonsProvider.notifier).searchPokemons();
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final pokemonsProviderState = ref.watch(pokemonsProvider);

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Scrollbar(
          interactive: true,
          thumbVisibility: true,
          controller: _scrollController,
          child: CustomScrollView(
            controller: _scrollController,
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
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  bottom: 10
                ),
                sliver: SliverGrid.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisExtent: 150
                  ),
                  itemCount: pokemonsProviderState.pokemons.length,
                  itemBuilder: (context, index) {
                    return PokemonCard(pokemon: pokemonsProviderState.pokemons[index]);
                  },
                ),
              ),

              if(pokemonsProviderState.isLoading) SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: LinearProgressIndicator(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(5),
                    backgroundColor: Colors.black12,
                  ),
                )
              )
            ],
          ),
        ),
      )
    );
  }
}