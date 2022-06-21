// Function that will return the count of distinct case-insensitive alphabetic characters and numeric digits that occur more than once in the input string
int duplicateCount(String text) {
  List<String> lista = text.toLowerCase().split('');
  Set<String> contagem = {};
  for (var i = 0; i < lista.length; i++) {
    for (var j = i + 1; j < lista.length; j++) {
      if (lista[i] == lista[j]) {
        contagem.add(lista[i]);
      }
    }
  }
  return contagem.length;
}

main() {
  // Exemplos:
  print(duplicateCount('ttrrrraccvv')); // 4 caracteres se repetem (t, r, c, v)
  print(duplicateCount('add'));
  print(duplicateCount('abcde'));
  print(duplicateCount('aabbcde'));
  print(duplicateCount('aabBcde'));
  print(duplicateCount('indivisibility'));
  print(duplicateCount('Indivisibilities'));
  print(duplicateCount('aA11'));
  print(duplicateCount('ABBA"'));
}