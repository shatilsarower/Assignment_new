import 'dart:io';

void printSegments(int l1, int r1, int l2, int r2) {
  // Print the first segment: integers between l1 and l2 (inclusive of l1, but excluding l2)
  for (int i = l1; i < l2; i++) {
    stdout.write('$i ');
  }

  // Print the second segment: integers between r2 and r1 (excluding r2, but inclusive of r1)
  for (int i = r2 + 1; i <= r1; i++) {
    stdout.write('$i ');
  }
}

void main() {
  // Taking input
  String input = stdin.readLineSync()!;
  List<String> inputList = input.split(' ');

  int l1 = int.parse(inputList[0]);
  int r1 = int.parse(inputList[1]);
  int l2 = int.parse(inputList[2]);
  int r2 = int.parse(inputList[3]);

  // Calling the function to print the segments
  printSegments(l1, r1, l2, r2);
  // Move to the next line for better readability in the console
}
