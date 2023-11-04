void main() {
  Celular celularDoLonguim = Celular("Blue", 8, 0.150, 6.7);

  print(celularDoLonguim.cor);
  print(celularDoLonguim.qtdPros);
  print(celularDoLonguim.toString());
  print(celularDoLonguim.valorDoCelular(900));
}

class Celular {
  final String cor;
  final int qtdPros;
  final double tamanho;
  final double peso;

  Celular(this.cor, this.qtdPros, this.peso, this.tamanho);

  String toString() {
    return "Cor $cor, quantidade de processador $qtdPros, peso $peso, tamanho $tamanho ";
  }

  double valorDoCelular(double valor) {
    return valor * qtdPros;
  }
}
