import 'dart:io';

void main() {
  // Get user input

  String userInput = stdin.readLineSync()!;

  // Call the function to parse and calculate the result
  calculateAndPrintResult(userInput);
}

void calculateAndPrintResult(String equation) {
  // Split the equation into digits and operator
  List<String> parts = equation.split(" ");

  // Extract digits and operator
  int num1 = int.parse(parts[0]);
  String operator = parts[1];
  int num2 = int.parse(parts[2]);

  // Perform the arithmetic operation based on the operator
  int result;
  switch (operator) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
    // Handle division by zero
      if (num2 == 0) {
        print("Error: Division by zero");
        return;
      }
      result = num1 ~/ num2; // Use integer division for Dart
      break;
    default:
      print("Error: Invalid operator");
      return;
  }

  // Format and print the result
  print("$result");
}
