import 'dart:io';
import 'dart:math';

/// Função para pegar o nome do usuário
String pegarNome() {
  stdout.write('Qual é o seu nome? ');
  String? nome = stdin.readLineSync();
  if(nome == '' || nome == null) {
    return 'Anônimo';
  } else {
    return nome;
  }
}

/// Função para pegar o peso do usuário
double pegarPeso() {
  stdout.write('Qual é o seu peso? ');
  String? peso = stdin.readLineSync();
  if(peso == '' || peso == null) {
    return 1.0;
  } else {
    return double.parse(peso);
  }
}

/// Função para pegar a altura do usuário
double pegarAltura() {
  stdout.write('Qual é a sua altura em metros? ');
  String? altura = stdin.readLineSync();
  if(altura == '' || altura == null) {
    return 1.0;
  } else {
    return double.parse(altura);
  }
}

/// Função para calcular o IMC
double calcularIMC({required double weight, required double height}) {
  return weight / pow(height, 2);
}

/// Função para significar o IMC
String condicional(value) {
  if (value < 16){
    return 'Dessa forma, você está muito abaixo do peso.';
  } else if (value > 16 && value < 17){
    return 'Dessa forma, você está com magreza moderada.';
  } else if (value > 17 && value < 18.5){
    return 'Dessa forma, você está com magreza leve.';
  } else if (value > 18.5 && value < 25){
    return 'Dessa forma, você está saudável.';
  } else if (value > 25 && value < 30){
    return 'Dessa forma, você está com sobrepeso.';
  } else if (value > 30 && value < 35){
    return 'Dessa forma, você está com obesidade grau I.';
  } else if (value > 35 && value < 40){
    return 'Dessa forma, você está com obesidade grau II.';
  } else if (value >= 40){
    return 'Dessa forma, você está com obesidade grau III.';
  } else {
    return 'Algo deu errado.';
  }
}