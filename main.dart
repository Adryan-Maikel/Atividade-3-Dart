import 'dart:io';
void main(){

  // choiceUser();
}
choiceUser(){
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
      evenOrOdd();
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
    choiceUser();
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
    number /= 2;
    numbers.add(number.toStringAsFixed(2));
  }
  print(numbers);
  chooseAgain();
}
evenOrOdd(){
  print("Digite 10 valores para separar por par ou impar:");
  print("Digite o primeiro número:");
  int numberOne = int.parse(stdin.readLineSync()!);
  print("Digite o segundo número:");
  int numberTwo = int.parse(stdin.readLineSync()!);
  print("Digite o terceiro número:");
  int numberThird = int.parse(stdin.readLineSync()!);
  print("Digite o quarto número:");
  int numberFourth = int.parse(stdin.readLineSync()!);
  print("Digite o quinto número:");
  int numberFifth = int.parse(stdin.readLineSync()!);
  print("Digite o sesto número:");
  int numberSixth = int.parse(stdin.readLineSync()!);
  print("Digite o setimo número:");
  int numberSeventh  = int.parse(stdin.readLineSync()!);
  print("Digite o oitavo número:");
  int numberEighth = int.parse(stdin.readLineSync()!);
  print("Digite o nono número:");
  int numberNineth = int.parse(stdin.readLineSync()!);
  print("Digite o decimo número:");
  int numberTenth = int.parse(stdin.readLineSync()!);
  var numberEven = [];
  var numberOdd = [];
  var numbers = [];
  numbers.add(numberOne);
  numbers.add(numberTwo);
  numbers.add(numberThird);
  numbers.add(numberFourth);
  numbers.add(numberFifth);
  numbers.add(numberSixth);
  numbers.add(numberSeventh);
  numbers.add(numberEighth);
  numbers.add(numberNineth);
  numbers.add(numberTenth);
  
  for(int i = 0; i < 10; i++){
    if(numbers[i] % 2 == 1){
      numberEven.add(numbers[i]);
    } else {
      numberOdd.add(numbers[i]);
    }
  }
  print("Impares $numberEven");
  print("Pares $numberOdd");
  chooseAgain();
}
