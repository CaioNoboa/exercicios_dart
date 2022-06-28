/*
When working with color values it can sometimes be useful to extract the individual red, green, and blue (RGB) component values for a color. Implement a function that meets these requirements:

Accepts a case-insensitive hexadecimal color string as its parameter (ex. "#FF9933" or "#ff9933")
Returns a Map<String, int> with the structure {r: 255, g: 153, b: 51} where r, g, and b range from 0 through 255
Note: your implementation does not need to support the shorthand form of hexadecimal notation (ie "#FFF")
*/

Map<String, int> hexToRGB(String hex) {
  List<String> list = hex.toUpperCase().split('');
  list.remove('#');
  Map<String, int> hexToRgb = {
    'r': 0,
    'g': 0,
    'b': 0,
  };

  for (var i = 0; i < list.length; i++) {
    switch (list[i]) {
      case '0':
        list[i] = '${0}';
        break;
      case '1':
        list[i] = '${1}';
        break;
      case '2':
        list[i] = '${2}';
        break;
      case '3':
        list[i] = '${3}';
        break;
      case '4':
        list[i] = '${4}';
        break;
      case '5':
        list[i] = '${5}';
        break;
      case '6':
        list[i] = '${6}';
        break;
      case '7':
        list[i] = '${7}';
        break;
      case '8':
        list[i] = '${8}';
        break;
      case '9':
        list[i] = '${9}';
        break;
      case 'A':
        list[i] = '${10}';
        break;
      case 'B':
        list[i] = '${11}';
        break;
      case 'C':
        list[i] = '${12}';
        break;
      case 'D':
        list[i] = '${13}';
        break;
      case 'E':
        list[i] = '${14}';
        break;
      case 'F':
        list[i] = '${15}';
        break;
      default:
        list[i] = 'Algo deu errado';
    }
  }

  hexToRgb['g'] = (int.parse(list[2]) * 16) + int.parse(list[3]);
  hexToRgb['r'] = (int.parse(list[0]) * 16) + int.parse(list[1]);
  hexToRgb['b'] = (int.parse(list[4]) * 16) + int.parse(list[5]);

  return hexToRgb;
}

main() {
  print(hexToRGB('#FF9933')); // {r: 255, g: 153, b: 51}
}