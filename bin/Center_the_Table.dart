import 'dart:io';

void main() {

  final input = stdin.readLineSync();
  final screenWidth = int.tryParse(input!);
  final tablePosition = calculateTablePosition(screenWidth!);
  print('$tablePosition ');
}

int calculateTablePosition(int screenWidth) {
  final tableWidth = 300; // Fixed table width in pixels
  final margin = (screenWidth - tableWidth) ~/ 2; // Half the difference between screen and table width
  return margin;
}
