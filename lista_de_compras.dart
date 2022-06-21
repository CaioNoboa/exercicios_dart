import 'dart:io';

main() {
  final List products = [];
  var isRunning = true;

  while (isRunning) {
    print("\x1B[2J\x1B[0;0H"); // código para limpar o terminal durante execução
    print('Por favor digite o que deseja:');
    print('1 - se deseja adicionar algum produto');
    print('2 - se deseja ver a lista de produtos');
    print('3 - para parar o programa');

    String? input = stdin.readLineSync();
    
    if (input == '1') {
      print('------- Adicione um produto (digite fim para parar) -------');
      var alsoRunning = true;
      
      while(alsoRunning) {
        String? product = stdin.readLineSync();
        
        if (product != 'fim') {
          products.add(product);
        } else {
          alsoRunning = false;
        }
      }
    } else if(input == '2') {
      print('\n');
      print('------- ${products.length} Produtos cadastrados: -------');
      
      for (var i = 0; i < products.length; i++) {
        print(products[i]);
      }

      isRunning = false;
    } else if(input == '3') {
      isRunning = false;
    } else {
      print('Não entendi');
    }
  }
  print('------- Fim do programa -------');
}