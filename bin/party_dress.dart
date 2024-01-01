import 'dart:io';

void main() {
  // Get user input

  String dressCode = stdin.readLineSync()!;


  int temperature = int.parse(stdin.readLineSync()!);

  // Call the function to suggest outfit based on inputs
  suggestOutfit(dressCode, temperature);
}

void suggestOutfit(String dressCode, int temperature) {
  if (dressCode == "casual" && temperature >= 15 && temperature <= 25) {
    print("Jeans and a light jacket.");
  } else if (dressCode == "festive" && temperature > 25) {
    print("Colorful dress and sandals.");
  } else {
    print("Wear what you're comfortable in.");
  }
}
