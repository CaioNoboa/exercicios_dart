/*
Task - https://www.codewars.com/kata/588422ba4e8efb583d00007d/dart

One night you go for a ride on your motorcycle. At 00:00 you start your engine, and the built-in timer automatically begins counting the length of your ride, in minutes. Off you go to explore the neighborhood.

When you finally decide to head back, you realize there's a chance the bridges on your route home are up, leaving you stranded! Unfortunately, you don't have your watch on you and don't know what time it is. All you know thanks to the bike's timer is that n minutes have passed since 00:00.

Using the bike's timer, calculate the current time. Return an answer as the sum of digits that the digital timer in the format hh:mm would show.

Example
For n = 240, the output should be

lateRide(n) === 4

Since 240 minutes have passed, the current time is 04:00. The digits sum up to 0 + 4 + 0 + 0 = 4, which is the answer.

For n = 808, the output should be

lateRide(n) === 14

808 minutes mean that it's 13:28 now, so the answer should be 1 + 3 + 2 + 8 = 14.
*/

int lateRide(int n) {
  // your code here
  int hora = n ~/ 60;
  int min = n % 60;
  String concat = '$hora$min';
  List<String> lista = concat.split('');
  int soma = 0;
  for (var i = 0; i < lista.length; i++) {
    soma += int.parse(lista[i]);
  }

  return soma;
}