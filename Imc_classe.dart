// Classe com atributos e método
import 'dart:math';

class Pessoa {
  late String nome;
  late double peso;
  late double altura;

  /// construtor
  Pessoa({
    required this.nome,
    required this.peso,
    required this.altura,
  });

  /// método para cálculo do IMC
  calcularIMC() {
    double resultado = (peso / pow(altura, 2));
    String resultadoDuasCasasDecimais = resultado.toStringAsFixed(2);    
    String texto = '$nome, seu peso é $peso kg, sua altura é $altura m. Seu IMC é $resultadoDuasCasasDecimais, dessa forma, você está';

    if (resultado < 16) {
      return '$texto muito abaixo do peso.';
    } else if (resultado > 16 && resultado < 17) {
      return '$texto com magreza moderada.';
    } else if (resultado > 17 && resultado < 18.5) {
      return '$texto com magreza leve.';
    } else if (resultado > 18.5 && resultado < 25) {
      return '$texto saudável.';
    } else if (resultado > 25 && resultado < 30) {
      return '$texto com sobrepeso.';
    } else if (resultado > 30 && resultado < 35) {
      return '$texto com obesidade grau I.';
    } else if (resultado > 35 && resultado < 40) {
      return '$texto com obesidade grau II.';
    } else if (resultado >= 40) {
      return '$texto com obesidade grau III.';
    } else {
      return 'Algo deu errado.';
    }
  }
}