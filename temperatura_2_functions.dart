import 'dart:io';

/// Este é um texto inicial
texto() {
  print('Olá, gostaria de transformar temperatura em Celsius para Fahrenheit e/ou vice-versa? Digite o que gostaria de fazer:');
  print('1 - Celsius para Fahrenheit');
  print('2 - Fahrenheit para Celsius');
}

/// Verificação do input e direcionamento para função que fará o cálculo
calcularTemperatura(value) {
  if(value == '1') {
    stdout.write('Ótimo, digite a temperatura em Celsius: ');
    double temperatureCelsius = double.parse(stdin.readLineSync()!);
    print("\x1B[2J\x1B[0;0H");
    return '$temperatureCelsius °C = ${celsiusParaFahrenheit(temperatureCelsius)} °F';
  } else if(value == '2') {
    stdout.write('Ótimo, digite a temperatura em Fahrenheit: ');
    double temperatureFahrenheit = double.parse(stdin.readLineSync()!);
    print("\x1B[2J\x1B[0;0H");
    return '$temperatureFahrenheit °F = ${fahrenheitParaCelsius(temperatureFahrenheit)} °C';
  } else {
    return 'Desculpe, não entendi';
  }
}

/// Transformando graus Celsius em graus Fahrenheit
celsiusParaFahrenheit(value) {
  return (value * 9/5 + 32).toStringAsFixed(2);
}

/// Transformando graus Fahrenheit em graus Celsius
fahrenheitParaCelsius(value) {
  return ((value - 32) * 5 / 9).toStringAsFixed(2);
}