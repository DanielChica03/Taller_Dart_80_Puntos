import 'dart:io';

void main() {
  for (int i = 1; i <= 5; i++) {
    print("Nombre persona $i: ");
    String nombre = stdin.readLineSync()!;

    print("Peso anterior: ");
    double anterior = double.parse(stdin.readLineSync()!);

    double suma = 0;
    for (int j = 1; j <= 10; j++) {
      print("Peso báscula $j: ");
      suma += double.parse(stdin.readLineSync()!);
    }

    double prom = suma / 10;
    double dif = prom - anterior;

    if (dif > 0) print("$nombre SUBIÓ ${dif.toStringAsFixed(2)} kg");
    else print("$nombre BAJÓ ${(dif.abs()).toStringAsFixed(2)} kg");
  }
}
