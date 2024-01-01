import 'dart:io';

void main() {
  try {

    List<String> inputList = stdin.readLineSync()!.split(" ");
    int product_id = int.parse(inputList[0]);
    int quantity = int.parse(inputList[1]);

    int totalCost = calculateTotalCost(product_id, quantity);
    print("$totalCost");
  } catch (FormatException) {
    print("Invalid input. Please enter valid integers for Product Id and Quantity.");
  }
}

int calculateTotalCost(int productId, int quantity) {
  Map<int, int> productPrices = {
    101: 10,
    202: 25,
    303: 5
  };

  int price = productPrices[productId] ?? 0;
  int totalCost = price * quantity;
  return totalCost;
}

