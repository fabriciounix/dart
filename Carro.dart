void main() {
  Carro mercedes = Carro("mercedes");
  Carro gol = Carro("gol");

  print(mercedes._segredo);
  print(mercedes.valorDoCarro);

  Longuim longuim = Longuim();
  print(longuim.falar());

  Pagamento pagamento = PagarComBoleto();
  pagamento.pagar();

  pagamento = PagarComPix();
  pagamento.pagar();
}

abstract class Pagamento {
  void pagar();
}

class PagarComBoleto implements Pagamento {
  void pagar() {
    print("Pagamento com boleto");
  }
}

class PagarComPix implements Pagamento {
  void pagar() {
    print("Pagamento com pix");
  }
}

class Falar {
  String falar() {
    return "Falar";
  }
}

class Longuim extends Falar {
  String falar() {
    return "Girias";
  }
}

abstract class Pessoa {
  String comunicar();
}

class PessoaET implements Pessoa {
  String comunicar() {
    return "Olá mundo!";
  }
}

class PessoaNaoET implements Pessoa {
  String comunicar() {
    return "Bom dia!";
  }
}

class Carro {
  final String modelo;
  String _segredo = "Muito dinheiro, por exemplo";
  int _valor = 1000;
  int get valorDoCarro => _valor;
  void setValue(int valor) => _valor = valor;
  Carro(this.modelo);
}
