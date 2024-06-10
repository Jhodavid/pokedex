import 'package:flutter/material.dart';


class PokemonAttributeLabel extends StatelessWidget {
  final String text;
  final Color? backgroundColor;

  const PokemonAttributeLabel(this.text, {super.key, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.black12,
        borderRadius: BorderRadius.circular(10)
      ),
      margin: const EdgeInsets.only(bottom: 5, right: 5),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Text(
        text,
        style: textTheme.labelMedium
      )
    );
  }
}