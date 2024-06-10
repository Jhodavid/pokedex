import 'package:flutter_test/flutter_test.dart';
import 'package:pokemon_johcode/core/utils/string_utils.dart';

void main() {
  test('capitalize should return the string with the first letter capitalized', () {
    final result = StringUtils.capitalize('pikachu');

    expect(result, 'Pikachu');
  });
}
