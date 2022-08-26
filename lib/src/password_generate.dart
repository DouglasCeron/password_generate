// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:password_generate/src/string_utils.dart';

class PasswordGenerate {
  final int size;
  final List<String> skipCharacters;
  PasswordGenerate({
    this.size = 21,
    this.skipCharacters = const [],
  });

  String generate() => StringUtils().generateRamdomString(size, skipCharacters);
}
