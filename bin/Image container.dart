import 'dart:io';

void main() {
  // Taking input

  int imageWidth = int.parse(stdin.readLineSync()!);

  // Checking constraints
  if (imageWidth < 400 || imageWidth > 1600 || imageWidth % 10 != 0) {
    return;
  }

  // Calculating left margin
  int containerWidth = 1000;
  int remainingSpace = containerWidth - imageWidth;
  int leftMargin = remainingSpace >= 0 ? remainingSpace ~/ 2 : 0;

  // Outputting the result
  print('$leftMargin');
}
