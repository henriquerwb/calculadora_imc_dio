class Pessoa {
  String _nome;
  double _peso;
  double _altura;

  Pessoa(this._nome, this._peso, this._altura);

  double getPeso() => _peso;

  double getAltura() => _altura;

  String getNome() => _nome;

  void setNome(String nome) {
    _nome = nome;
  }

  void setPeso(double peso) {
    if (peso > 0) {
      _peso = peso;
    } else {
      throw ArgumentError("O peso deve ser maior que zero");
    }
  }

  setAltura(double altura) {
    if (altura > 0) {
      _altura = altura;
    } else {
      throw ArgumentError("A altura deve ser maior que zero.");
    }
  }

  double calcularIMC(double peso, double altura) {
    return _peso / (_altura * _altura);
  }

  String verificarIMC(double imc) {
    if (imc < 16) {
      return "Magreza grave";
    } else if (imc < 17) {
      return "Magreza moderada";
    } else if (imc < 18.5) {
      return "Magreza leve";
    } else if (imc < 25) {
      return "Saudável";
    } else if (imc < 30) {
      return "Sobrepeso";
    } else if (imc < 35) {
      return "Obesidade Grau I";
    } else if (imc < 40) {
      return "Obesidade Grau II (Severa)";
    } else {
      return "Obesidade Grau III (mórbida)";
    }
  }
}
