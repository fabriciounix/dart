import 'dart:convert';

void main(List<String> args) {
  String json = '''
    {
      "usuario" : "fabricio@email.com",
      "senha": 123456,
      "permissoes" : [
        "owner", "admin"
      ]
    }
  ''';
  print(json);

  var resultJosn = jsonDecode(json);
  print(resultJosn);
  print(resultJosn.runtimeType);
  print(resultJosn['usuario']);
  print(resultJosn['senha']);
  print(resultJosn['permissoes'][0]);

  Map mapa = {
    "nome": "fabricio",
    "pass": 123,
    "permissions": ["owner", "admin"]
  };

  print(mapa);

  // como transforma uma mapa em json
  var result = jsonEncode(mapa);
  print(result);
}
