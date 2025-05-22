import 'dart:io';

void main(){
print('Enter first number:');
var firstNumber =stdin.readLineSync();
var firstNumberInt = int.parse(firstNumber!);
print('Enter second number:');
var secondNumber =stdin.readLineSync();
var secondNumberInt = int.parse(secondNumber!);
print('Enter operator:');
var operator =stdin.readLineSync();
var result;

if (operator == '+'){
  result = firstNumberInt + secondNumberInt;
  print('result: $result');
}else if (operator == '-'){
  result = firstNumberInt - secondNumberInt;
  print('result: $result');
}else if (operator == '*'){
  result = firstNumberInt * secondNumberInt;
  print('result: $result'); 
}else if (operator == '/'){
  result = firstNumberInt / secondNumberInt;
  print('result: $result');
}else if (operator == '%'){
  result = firstNumberInt % secondNumberInt;
  print('result: $result');
}else if (operator == '^'){
  result = firstNumberInt ^ secondNumberInt;
  print('result: $result');
}else {
  print('invalid operator');
  print('valid operators are +, -, *, /, %, ^');
}
}