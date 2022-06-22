// A partir de m = n! / (x! * (n - x)!), descubra o valor de x. Se não houver valor de x possível para o m dado, retorne -1

int checkChoose(int m, n) {
  // valor de n! / m
  dynamic factorialN = 1;
  for (var i = n; i >= 1; i--) {
    factorialN *= i;
  }
  double divisaoNM = factorialN / m;

  // valor de x! * (n - x)!
  int X = 1;
  for (var i = 1; i <= n; i++) {
    int factorialX = 1;
    for (var j = X; j >= 1; j--) {
      factorialX *= j;
    }

    int factorialNMinusX = 1;
    for (int h = (n - X); h >= 1; h--) {
      factorialNMinusX *= h;
    }
    int produtoXN = factorialX * factorialNMinusX;

    bool comparacao = divisaoNM == produtoXN;
    if (comparacao) {
      return X;
    }
    X += i;
  }

  return -1;
}

main() {
  print(checkChoose(6, 4));
  print(checkChoose(4, 4));
  print(checkChoose(4, 2));
  print(checkChoose(35, 7));
  print(checkChoose(36, 7));
  print(checkChoose(351, 27));
}
