/*
You get an array of numbers, return the sum of all of the positives ones.
Example [1,-4,7,12] => 1 + 7 + 12 = 20
Note: if there is nothing to sum, the sum is default to 0.
*/

int positiveSum(List<int> arr) {
  List<int> lista = [];
  for (var i = 0; i < arr.length; i++) {
    if (arr[i] >= 0) {
      lista.add(arr[i]);
    }
  }

  int soma = 0;
  for (var i = 0; i < lista.length; i++) {
    if (lista.isEmpty) {
      return 0;
    }
    soma += lista[i];
  }
  return soma;
}

void main(List<String> args) {
  var arr = [1,-4,7,12];
  print(positiveSum(arr)); // 20
}