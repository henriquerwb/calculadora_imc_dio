import 'package:calculadora_imc/classes/pessoa.dart';
import 'package:calculadora_imc/models/console_utils.dart';

void main(List<String> arguments) {
  var nome = ConsoleUtils.lerConsole('Digite o nome do paciente:');
  var altura = ConsoleUtils.lerConsoleDoubleComTexto(
      'Digite a altura do paciente (em Metros):');
  var peso = ConsoleUtils.lerConsoleDoubleComTexto(
      'Digite o peso do paciente (em KG):');
  var paciente = Pessoa(nome, peso, altura);
  double imc = paciente.calcularIMC(peso, altura);
  print(
      "O paciente $nome que possui altura de $altura M e pesa $peso KG, possui o IMC de ${imc.toStringAsFixed(2)}");
  print('O paciente está: ${paciente.verificarIMC(imc)}');
}
