/*
accum("abcd") -> "A-Bb-Ccc-Dddd"
accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
accum("cwAt") -> "C-Ww-Aaa-Tttt"
*/

String accum(String str) {
  List<String> arr = str.split('');
  List<String> array = [];
  for (var i = 0; i < arr.length; i++) {
    String letter = arr[i].toUpperCase();
    for (var j = 0; j < i; j++) {
      letter += arr[i].toLowerCase();
    }
    array.add(letter);
  }
  return array.join('-');
}

main() {
  print(accum('hello'));
}