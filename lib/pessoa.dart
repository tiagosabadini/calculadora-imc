class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;

  Pessoa(String nome, double peso, double altura) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  String getNome() {
    return _nome;
  }

  double getpeso() {
    return _peso;
  }

  double getaltura() {
    return _altura;
  }

  @override
  String toString() {
    return "Nome: $_nome, Peso: $_peso, Altura: $_altura";
  }
}
