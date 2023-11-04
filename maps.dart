void main(List<String> args) {
  List<String> lista = ['Fabrício', 'Longuim'];

  print(lista[0]);

  //   chave,  valor
  Map<String, String> mega = {'chave': 'valor'};

  print(mega['chave']);

  // adiciona item no mapa
  mega.putIfAbsent('novaChave', () => 'novoValor');

  print(mega);

  mega['novaChaveDois'] = 'novoValorDois';

  print(mega);

  //remove item do mapa
  mega.remove('chave');
  print(mega);

  // como atualizar um item no mapa
  mega['novaChaveDois'] = 'atualizado';
  print(mega);

  // outro jeito de atualizar um item no mapa
  mega.update('novaChaveDois', (value) => 'novaAtualização');
  print(mega);

  mega.forEach((chave, valor) => print('A chave é: $chave, o valor é: $valor'));
  mega.keys.forEach(print);
  mega.values.forEach(print);
}
