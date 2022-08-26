import 'package:password_generate/password_generate.dart';

void main() {
  final passwordDefault = PasswordGenerate();
  print('Senha padrão gerada: ${passwordDefault.generate()}');

  final passwordSize = PasswordGenerate(size: 50);
  print('Senha Size 50 gerada: ${passwordSize.generate()}');

  final passwordCustom = PasswordGenerate(size: 12, skipCharacters: [
    ' ',
    ',',
    '.',
    '|',
    '/',
    '~',
    '_',
    '{',
    '}',
    '^',
    '´',
    '`'
  ]);
  print('Senha Custom gerada: ${passwordCustom.generate()}');
}
