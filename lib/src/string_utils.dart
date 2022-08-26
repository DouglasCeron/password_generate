import 'dart:math';

class StringUtils {
  final _random = Random.secure();
  String password = '';

  String generateRamdomString(int size,
      [List<String> skipCaracteres = const []]) {
    var i = 0;

    while (i <= size) {
      password += _generateCharacter(skipCaracteres);
      i++;
    }

    return password;
  }

  String _generateCharacter(List<String> skipCharacters) {
    final caracterNum = _random.nextInt(33) + 94;
    final char = String.fromCharCode(caracterNum);

    if (skipCharacters.contains(char)) {
      return _generateCharacter(skipCharacters);
    }

    return char;
  }
}

void main(List<String> args) {
  StringUtils().generateRamdomString(
      200, [' ', ',', '.', '|', '/', '~', '_', '{', '}', '^', '´', '`']);
}
