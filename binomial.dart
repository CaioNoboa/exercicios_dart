// A partir de m = n! / (x! * (n - x)!), descubra o valor de x. Se não houver valor de x possível para o m dado, retorne -1

int checkChoose(int m, n) {
  // valor de n!
  dynamic factorialN = 1;
  for (var i = n; i >= 1; i--) {
    factorialN *= i;
  }

  // valores possíveis de x
  List<int> valoresX = [];
  for (var i = 1; i <= n; i++) {
    valoresX.add(i);
  }

  // valores possíveis de x!
  List<int> factorialXList = [];
  for (var i = 0; i < valoresX.length; i++) {
    int factorialX = 1;
    for (var j = valoresX[i]; j >= 1; j--) {
      factorialX *= j;      
    }
    factorialXList.add(factorialX);
  }

  // valores possíveis de (x - n)!
  List<num> valuesXMinusYList = [];
  num valueXMinusY = 1;
  for (var i = 0; i < valoresX.length; i++) {
    num factorialNMinusX = 1;
    valueXMinusY = (n - valoresX[i]);
    for (var j = valueXMinusY; j >= 1; j--) {
      factorialNMinusX *= j;
    }
    valuesXMinusYList.add(factorialNMinusX);  
  }

  List<num> listaProdutos = [];
  for (var i = 0; i < factorialXList.length; i++) {
    var produto = (factorialN / (factorialXList[i] * valuesXMinusYList[i]));
    listaProdutos.add(produto);
  }

  for (var i = 0; i < listaProdutos.length; i++) {
    int comparacao = listaProdutos[i].toInt();
    if (comparacao == m) {
      return valoresX[i];
    }
  }

  return -1; 
}

main() {
  // checkChoose(5, 3);
  // print(checkChoose(3, 3));
  // print(checkChoose(6, 4));
  // print(checkChoose(4, 4));
  // print(checkChoose(4, 2));
  // print(checkChoose(35, 7));
  print(checkChoose(351, 27));
}