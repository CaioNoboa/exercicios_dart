/*
Write a function that when given a number >= 0, returns an Array of ascending length subarrays:
pyramid(0) => [ ]
pyramid(1) => [ [1] ]
pyramid(2) => [ [1], [1, 1] ]
pyramid(3) => [ [1], [1, 1], [1, 1, 1] ]
*/

List<List<int>> pyramid(int n) {
  List<List<int>> list = [];
  for (var i = 1; i <= n; i++) {
    List<int> intList = [];
    for (var j = 1; j <= i; j++) {
      intList.add(1);
    }
  list.add(intList);
  }
  return list;
}

main() {
  // Exemplos:
  print(pyramid(1));
  print(pyramid(2));
  print(pyramid(2));
  print(pyramid(4));
  print(pyramid(5));
}