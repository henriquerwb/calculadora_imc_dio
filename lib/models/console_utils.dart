import 'dart:convert';
import 'dart:io';

class ConsoleUtils {
  static String lerConsole(String texto) {
    print(texto);
    return stdin.readLineSync(encoding: utf8) ?? "";
  }

  static double lerConsoleDoubleComTexto(String texto) {
    var value = lerConsole(texto);
    try {
      var doubleValue = double.parse(value);
      if (doubleValue < 0) {
        throw FormatException("Erro: digite um número positivo.");
      }
      return doubleValue;
    } catch (e) {
      print("Erro: Digite um número válido.");
      return lerConsoleDoubleComTexto(texto);
    }
  }
}
