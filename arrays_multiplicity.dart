// Checando se os elementos da secondList são os elementos da firstList ao quadrado
import 'dart:math';

bool comp(List<int> firstList, List<int> secondList) {
  List<int> updateFirstList = [];
  for (var i = 0; i < firstList.length; i++) {
    updateFirstList.add(firstList[i].abs());
  }

  List<int> updateSecondList = secondList;
  
  bool hasMultiplicity = true;
  List<int> intList = [];
  for (var i = 0; i < updateFirstList.length; i++) {
    for (var j = 0; j < updateSecondList.length; j++) {
      hasMultiplicity = updateFirstList[i] == sqrt(updateSecondList[j]);
      if (hasMultiplicity) {
        intList.add(1);
        updateSecondList.remove(updateSecondList[j]);
      }
    }    
  }

  if (intList.length == firstList.length && updateSecondList.length == 0) {
    return true;
  } else {
    return false;
  }
}


main() {
  // Exemplos:
  List<int> a = [121, 144, 19, 161, 19, 144, 19, 11];
  List<int> b = [121, 14641, 20736, 361, 25921, 361, 20736, 361];
  print(comp(a, b)); // true

  List<int> c = [2, 2, 3];
  List<int> d = [4, 9, 9];
  print(comp(c, d)); // false

  List<int> e = [1, 4, 2, 6, 5, 7, 5, 7];
  List<int> f = [1, 16, 4, 36, 25, 49, 25, 49, 50];
  print(comp(e, f)); // false

  List<int> g = [-4, -5, -7, -3, -3, -5, -10, -9];
  List<int> h = [16, 25, 49, 9, 9, 25, 100, 81];
  print(comp(g, h)); // true
}