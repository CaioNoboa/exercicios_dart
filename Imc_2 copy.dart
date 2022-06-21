// Calculo do IMC utilizando classe e funções
import 'Imc_classe.dart';
import 'Imc_funcoes.dart';

main() {
  Pessoa person = Pessoa(
    nome: pegarNome(),
    peso: pegarPeso(),
    altura: pegarAltura(),
  );

  print("\x1B[2J\x1B[0;0H");
  print(person.calcularIMC());
}