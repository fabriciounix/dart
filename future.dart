void main() async {
  // future, Async e Await

  String nome = "Fabrício";
  Future<String> cepFuturo = getCepByName("Rua JK");
  late String cep;

  // cepFuturo.then((result) => print(result));

  //cepFuturo.then((result) => cep = result);

  cep = await cepFuturo;

  print(cep);

  //print(cepFuturo);
}

// external service
Future<String> getCepByName(String name) {
  // simulando requisição
  return Future.value("06038000");
}
