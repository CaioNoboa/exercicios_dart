import 'IMC_classe.dart';
import 'IMC_funcoes.dart';

// Calculo do IMC utilizando classe e funções

main() {
  Pessoa person = Pessoa(
    nome: pegarNome(),
    peso: pegarPeso(),
    altura: pegarAltura(),
  );

  print("\x1B[2J\x1B[0;0H");
  print(person.calcularIMC());
}