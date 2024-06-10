import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:pokemon_johcode/core/utils/string_utils.dart';
import 'package:pokemon_johcode/core/domain/services/type_color_mapper.dart';
import 'package:pokemon_johcode/application/providers/detailed_data_pokemon_provider.dart';
import 'package:pokemon_johcode/presentation/pages/detail/widgets/detail_data.dart';
import 'package:pokemon_johcode/presentation/widgets/pokemon_attribute_label.dart';
import 'package:pokemon_johcode/presentation/pages/detail/widgets/detailed_app_bar.dart';


class DetailPage extends ConsumerWidget {

  final String pokemonName;
  final String imageUrl;

  const DetailPage({
    super.key,
    required this.pokemonName,
    required this.imageUrl
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    final detailedData = ref.watch(detailedDataPokemonProvider(pokemonName));

    return Scaffold(
      backgroundColor: TypeColorMapper.getColorForType(
        !detailedData.isLoading && detailedData.hasValue
          ? detailedData.value!.types
          : [],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              const DetailedAppBar(),
              Container(
                width: width,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            StringUtils.capitalize(pokemonName),
                            style: textTheme.displaySmall,
                          ),
                          const SizedBox(height: 5),
                          SizedBox(
                            height: 40,
                            child: detailedData.when(
                              data: (data) {
                                return Wrap(
                                  children: List<Widget>.from(
                                    data.types.map((type) => PokemonAttributeLabel(StringUtils.capitalize(type)))
                                  ),
                                );
                              },
                              error: (_, __) => Row(
                                children: _getErrorWidgets(textTheme, 'Error on load types')
                              ),
                              loading: () => Container(),
                            )
                          )
                        ],
                      ),
                    ),
                    detailedData.when(
                      data: (data) {
                        return Text(
                          '#${detailedData.value!.id}',
                          style: textTheme.labelLarge,
                        );
                      },
                      error: (_, __) => Container(),
                      loading: () => Container(),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 250,
                child: Image.network(
                  imageUrl,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.warning_rounded, color: Colors.red);
                  },
                ),
              ),
              Expanded(
                child: Container(
                  width: width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)
                    )
                  ),
                  child: detailedData.when(
                    data: (data) {
                      return DetailData(pokemon: data);
                    },
                    error: (_, __) => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _getErrorWidgets(textTheme, 'Error on load data')
                    ),
                    loading: () => Container(),
                  ),
                )
              )
            ],
          ),
          if(detailedData.isLoading) LinearProgressIndicator(
            minHeight: height,
            color: Colors.white.withOpacity(0.2),
            backgroundColor: Colors.white.withOpacity(0.4),
          ),
        ],
      ),
    );
  }
}

List<Widget> _getErrorWidgets(TextTheme textTheme, String errorMessage) {
  return [
    const Icon(Icons.warning_rounded, color: Colors.red),
    const SizedBox(height: 5, width: 5),
    Text(
      errorMessage,
      style: textTheme.labelSmall?.copyWith(color: Colors.red),
    )
  ];
}
