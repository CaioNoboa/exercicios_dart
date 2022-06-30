/*
  Recursão significa uma função que faz uma chamada para si mesma.
  É usada para resolver grandes problemas complexos, dividindo-os em subproblemas menores.
  Em uma função recursiva, a função chama a si mesma repetidamente até que uma condição básica seja alcançada.
*/

int factorial(int number) {
  if (number <= 1) {
    return 1;
  }
  return number * factorial(number - 1);
}


main() {
  print(factorial(8));
}