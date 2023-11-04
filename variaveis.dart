void main() {
  String variavelNome = "Fabricio";
  int valorVariavel = 10;
  bool ehverdadeiro = true;
  List<String> listaDePalavras = ["Fabricio", "Roberto", "Longuim"];

  print(variavelNome);
  print(valorVariavel);
  print(ehverdadeiro);
  print(
      listaDePalavras[0] + " " + listaDePalavras[1] + " " + listaDePalavras[2]);
  print('${listaDePalavras[0]} - ${listaDePalavras[2]}');

  for (var i = 0; i < 3; i++) {
    print(listaDePalavras[i]);
  }

  //null-safety
  String? nome;
  nome = "Bolso";
  print(nome!);
  nome = null;

  late String sobrenome = "Naro";
  print(sobrenome);
}
