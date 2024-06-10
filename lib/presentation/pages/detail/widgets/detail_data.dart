
import 'package:flutter/material.dart';
import 'package:pokemon_johcode/core/domain/entities/detailed_data_pokemon/detailed_data_pokemon_entity.dart';
import 'package:pokemon_johcode/core/domain/services/type_color_mapper.dart';
import 'package:pokemon_johcode/core/utils/string_utils.dart';
import 'package:pokemon_johcode/presentation/widgets/pokemon_attribute_label.dart';

class DetailData extends StatelessWidget {

  final DetailedDataPokemonEntity pokemon;

  const DetailData({
    super.key,
    required this.pokemon
  });

  @override
  Widget build(BuildContext context) {
    final attributeBackgroundColor = TypeColorMapper.getColorForType(pokemon.types);

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 10),
            _Attribute(
              name: 'Base Experience:',
              data: [pokemon.baseExperience.toString()],
              attributeBackgroundColor: attributeBackgroundColor
            ),
            const SizedBox(height: 5),
            _Attribute(
              name: 'Height:',
              data: [pokemon.height.toString()],
              attributeBackgroundColor: attributeBackgroundColor
            ),
            const SizedBox(height: 10),
            _Attribute(
              name: 'Weight:',
              data: [pokemon.weight.toString()],
              attributeBackgroundColor: attributeBackgroundColor
            ),
            const SizedBox(height: 10),
            _Attribute(
              name: 'Abilities:',
              data: pokemon.abilities,
              attributeBackgroundColor: attributeBackgroundColor
            ),
            const SizedBox(height: 10),
            _Attribute(
              name: 'Moves:',
              data: pokemon.moves,
              attributeBackgroundColor: attributeBackgroundColor
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class _Attribute extends StatelessWidget {
  final String name;
  final List<String> data;
  final Color attributeBackgroundColor;

  const _Attribute({
    required this.name,
    required this.data,
    required this.attributeBackgroundColor
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final width = MediaQuery.of(context).size.width;

    return SizedBox(
      width: width-20,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Text(
              name,
              style: textTheme.labelLarge?.copyWith(
                color: Colors.black
              ),
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Wrap(
              children: List<Widget>.from(
                data.map((value) => PokemonAttributeLabel(
                    StringUtils.capitalize(value),
                    backgroundColor: attributeBackgroundColor
                  ),
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}