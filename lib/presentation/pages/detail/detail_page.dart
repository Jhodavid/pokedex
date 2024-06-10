import 'package:flutter/material.dart';


class DetailPage extends StatelessWidget {

  final String pokemonName;
  final String imageUrl;

  const DetailPage({
    super.key,
    required this.pokemonName,
    required this.imageUrl
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
