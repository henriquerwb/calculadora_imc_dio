import 'package:calculadora_imc/classes/pessoa.dart';
import 'package:test/test.dart';

void main() {
  group('Teste da função calcularIMC', () {
    test('Teste com valores válidos', () {
      var teste = Pessoa('Teste', 70, 1.75);
      double resultado = teste.calcularIMC(70, 1.75);
      expect(resultado, closeTo(22.86, 0.005));
    });
  });
}
