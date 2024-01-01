import 'dart:io';

void main() {
  try {

    int? fruitId = int.tryParse(stdin.readLineSync()!);

    if (fruitId != null) {
      String fruitName = getFruitName(fruitId);
      print("$fruitName");
    } else {
      print("Invalid input. Please enter a valid integer for the Fruit Id.");
    }
  } catch (FormatException) {
    print("Invalid input. Please enter a valid integer for the Fruit Id.");
  }
}

String getFruitName(int fruitId) {
  Map<int, String> fruitNames = {
    31231: "Banana",
    43861: "Elderberry",
    82678: "Honeydew Melon",
    23456: "Apple",
    78901: "Mango",
    98765: "Nectarine",
    45678: "Orange",
    67890: "Raspberry",
    21098: "Tangerine",
  };

  return fruitNames[fruitId] ?? "Invalid Fruit Id";
}
