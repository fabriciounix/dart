import 'dart:ffi';

void main(List<String> args) {
  String nome = 'fabrício';
  //print(nome[0].toUpperCase() + nome.substring(1));
  //print(Utils().toFirstCharToUpperCase(nome));
  print(nome.toFirstCharToUpperCase());
  print('abel'.toFirstCharToUpperCase());
  print('bolsonaro'.toFirstCharToUpperCase());
  print(Xpto.enumValue.toValue());
  print(Xpto.enumNovo.toValue());
}

enum Xpto {
  enumValue,
  enumNovo;
}

extension ExtensionsEnum on Enum {
  String toValue() {
    Map map = {Xpto.enumValue: 'xpto', Xpto.enumNovo: 'novoEnum'};
    return map[this];
  }
}

extension ExtensionsString on String {
  String toFirstCharToUpperCase() {
    return this[0].toUpperCase() + this.substring(1);
  }
}

class Utils {
  toFirstCharToUpperCase(String value) {
    return value[0].toUpperCase() + value.substring(1);
  }
}
