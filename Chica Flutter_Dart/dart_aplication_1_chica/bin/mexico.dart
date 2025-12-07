import 'dart:io';

void main() {
  print("Ingrese la cantidad de hectáreas del bosque:");
  double hectareas = double.parse(stdin.readLineSync()!);

  double m2 = hectareas * 10000;

  double porcPino, porcOyamel, porcCedro;

  if (m2 > 1000000) {
    porcPino = 0.70;
    porcOyamel = 0.20;
    porcCedro = 0.10;
  } else {
    porcPino = 0.50;
    porcOyamel = 0.30;
    porcCedro = 0.20;
  }

  double areaPino = m2 * porcPino;
  double areaOyamel = m2 * porcOyamel;
  double areaCedro = m2 * porcCedro;

  // Densidades
  int pinos = (areaPino / 10 * 8).toInt();
  int oyameles = (areaOyamel / 15 * 15).toInt();
  int cedros = (areaCedro / 18 * 10).toInt();

  print("\nÁrboles a sembrar:");
  print("Pinos: $pinos");
  print("Oyameles: $oyameles");
  print("Cedros: $cedros");
}
