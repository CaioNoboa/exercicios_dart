import 'dart:io';
import 'temperatura_2_functions.dart';

main() {
  texto();
  String? input = stdin.readLineSync();
  print(calcularTemperatura(input));
}