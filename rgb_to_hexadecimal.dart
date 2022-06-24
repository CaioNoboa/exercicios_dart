import 'rgb_to_hexadecimal_2.dart';

String rgb(int r, int g, int b) {
  List<String> lista = [];

  [...dividing(r)].followedBy([...lista]).toList();
  [...dividing(g)].followedBy([...lista]).toList();
  var mergedList = [...dividing(b)].followedBy([...lista]).toList();

  return mergedList.join('');
}

main() {
  // print(rgb(255, 255, 255));
  // print(rgb(0, 0, 0));
  print(rgb(148, 0, 211));
}
