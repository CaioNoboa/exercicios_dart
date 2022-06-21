// Retornando os últimos 'n' números pares
List<int> evenNumbers(List<int> arr, int n) {
  List<int> listEvenNumbers = [];
  for (var i = 0; i < arr.length; i++) {
    if (arr[i].isEven) {
      listEvenNumbers.add(arr[i]);
    }
  }
  List<int> listLastNumbers = [];
  for (var i = listEvenNumbers.length; i > (listEvenNumbers.length - n); i--) {
    listLastNumbers.add(listEvenNumbers[i - 1]);
  }
  return listLastNumbers.reversed.toList();
}

main() {
  // Exemplos:
  print(evenNumbers([1, 2, 6, 8, 3, 4, 6, 10, 12, 14, 11, 13, 20], 4));
}
