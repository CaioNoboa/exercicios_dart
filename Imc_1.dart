// Calculo do IMC utlizando apenas com funções
import 'Imc_funcoes.dart';

main() {
  String nome = pegarNome();
  double peso = pegarPeso();
  double altura = pegarAltura();
  double resultado = calcularIMC(weight: peso, height: altura);
  String textoComplementar = condicional(resultado);

  print("\x1B[2J\x1B[0;0H");
  print('$nome, o seu IMC é ${resultado.toStringAsFixed(2).replaceAll('.', ',')}. $textoComplementar');
}