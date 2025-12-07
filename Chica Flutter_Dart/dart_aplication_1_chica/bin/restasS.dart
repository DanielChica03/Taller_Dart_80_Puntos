import 'dart:io';

void main() {
  stdout.write("Dividendo: ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Divisor: ");
  int b = int.parse(stdin.readLineSync()!);

  int cociente = 0;

  while (a >= b) {
    a -= b;
    cociente++;
  }

  print("Cociente: $cociente");
  print("Resto: $a");
}
