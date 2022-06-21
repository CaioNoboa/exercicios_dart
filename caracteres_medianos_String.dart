// Pegando caracteres do meio de palavras
String getMiddle(String s) {
  List<String> lista = s.split('');
  int index = lista.length ~/ 2;
  if (lista.length.isEven) {
    return ('${lista[index - 1]}, ${lista[index]}');
  } else if (lista.length.isOdd) {
    return ('${lista[index]}');
  } else {
    return 'Algo deu errado';
  }
}

main() {
  // Exemplos:
  print(getMiddle('asda'));
  print(getMiddle('123123'));
  print(getMiddle('asdas'));
  print(getMiddle('asdaxxvdesfds'));
}