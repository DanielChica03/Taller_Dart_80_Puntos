import 'dart:io';

void main() {
  print("Ingrese la cantidad de Bolívares:");
  int monto = int.parse(stdin.readLineSync()!);

  List<int> billetes = [50000, 20000, 10000, 5000, 2000, 1000, 500, 100, 50, 20, 10];

  print("\nDESGLOSE DE BILLETES:");
  for (int b in billetes) {
    int cantidad = monto ~/ b;
    monto = monto % b;
    print("Billetes de $b: $cantidad");
  }
}
