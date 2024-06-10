
import 'package:flutter/material.dart';

class TypeColorMapper {
  static const Map<String, Color> _typeColorMap = {
    'fire': Color(0xfff28c8c),
    'water': Color(0xff8caef2),
    'grass': Color(0xff8cf2b4),
    'electric': Color(0xfff2e58c),
    'ice': Color(0xff8cf2f2),
    'fighting': Color(0xfff28c8c),
    'poison': Color(0xffb38cf2),
    'ground': Color(0xfff2c68c),
    'flying': Color(0xffc2a8f2),
    'psychic': Color(0xfff28cb4),
    'bug': Color(0xffc2f28c),
    'rock': Color(0xfff2c68c),
    'ghost': Color(0xff8c8cf2),
    'dragon': Color(0xff8c8cf2),
    'dark': Color(0xff8c8c8c),
    'steel': Color(0xffc2c2f2),
    'fairy': Color(0xfff2a8c2)
  };

  static Color getColorForType(List<String> types) {
    for (final type in types) {
      if (_typeColorMap.containsKey(type)) {
        return _typeColorMap[type]!;
      }
    }
    return const Color(0xff989898);
  }
}