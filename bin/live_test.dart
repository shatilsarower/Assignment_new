class Fruit {
  String name;
  String color;
  double price;

  Fruit({required this.name, required this.color, required this.price});

  @override
  String toString() {
    return "Name: $name, Color: $color, Price: $price";
  }
}

void displayFruitDetails(List<Fruit> fruits) {
  print('Fruit Details:');
  for (final fruit in fruits) {
    print(fruit);
  }
}

void applyPriceDiscount(List<Fruit> fruits, double discount) {
  for (final fruit in fruits) {
    fruit.price *= (1 - discount);
  }
}

void main() {

  final fruits = [
    Fruit(name: 'Apple', color: 'Red', price: 2.5),
    Fruit(name: 'Banana', color: 'Yellow', price: 1.0),
    Fruit(name: 'Grapes', color: 'Purple', price: 3.0),
  ];


  print("Original Fruit Details before Discount:");
  displayFruitDetails(fruits);


  final discount = 0.1;
  applyPriceDiscount(fruits, discount);


  print('\nFruit Details After Applying 10% Discount:');
  displayFruitDetails(fruits);
}