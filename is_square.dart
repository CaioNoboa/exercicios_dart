/*
Given an integral number, determine if it's a square number.

Examples
-1  =>  false
 0  =>  true
 3  =>  false
 4  =>  true
25  =>  true
26  =>  false
*/

import 'dart:math';

isSquare(n) {
  if (n < 0) {
    return false;
  } else if (n == 0) {
    return true;
  }

  var square = sqrt(n);
  var resto = square % (square ~/ square);

  if (resto == 0) {
    return true;
  } else {
    return false;
  }
}

main () {
  print(isSquare(25));
  print(isSquare(26));
  print(isSquare(-1));
  print(isSquare(0));
}