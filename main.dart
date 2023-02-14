import 'dart:io';
void main(){
  print("Digite o número da atividade");
  print("1- Atividade 1");
  print("2- Atividade 2");
  print("3- Atividade 3");
  print("4- Atividade 4");
  String? choose = stdin.readLineSync().toString();
  switch (choose) {
    case "1":
      arrayMultiply();
      break;
    case "2":
      arrayDivision();
      break;
    case "3":

      break;
    case "4":

      break;
    default:
    chooseAgain();
  }
}
chooseAgain(){
  print("Deseja tentar outra atividade? S - sim");
  String? choice = stdin.readLineSync().toString();
  if(choice.toUpperCase() == "S"){
    main();
  }
  return;
}
arrayMultiply(){
  final numbers = [];
  print("Digite um número");
  int number = int.parse(stdin.readLineSync()!);
  numbers.add(number);
  for(int i = 0; i < 9; i++){
    number *= 2;
    numbers.add(number);
  }
  print(numbers);
  chooseAgain();
}
arrayDivision(){
  var numbers = [];
  print("Digite um número");
  double number = double.parse(stdin.readLineSync()!);
  numbers.add(number);
  for(int i = 0; i < 100; i++){
    // print(i);
    number /= 2;
    numbers.add(number.toStringAsFixed(2));
  }
  print(numbers);
  chooseAgain();
}
