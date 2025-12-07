import 'dart:io';

void main() {
  print("Ingrese la edad en años (si es menor de 1 año, escriba 0):");
  int edad = int.parse(stdin.readLineSync()!);

  print("Ingrese los meses (0–11):");
  int meses = int.parse(stdin.readLineSync()!);

  print("Ingrese el nivel de hemoglobina (g%):");
  double h = double.parse(stdin.readLineSync()!);

  double min = 0, max = 0;

  if (edad == 0 && meses <= 1) {
    min = 13; max = 26;
  } else if (edad == 0 && meses <= 6) {
    min = 10; max = 18;
  } else if (edad == 0 && meses <= 12) {
    min = 11; max = 15;
  } else if (edad <= 5) {
    min = 11.5; max = 15;
  } else if (edad <= 10) {
    min = 12.6; max = 15.5;
  } else if (edad <= 15) {
    min = 13; max = 15.5;
  } else {
    print("Ingrese sexo (M/F):");
    String sexo = stdin.readLineSync()!.toUpperCase();
    if (sexo == "F") {
      min = 12; max = 16;
    } else {
      min = 14; max = 18;
    }
  }

  if (h < min) {
    print("\nResultado: POSITIVO — Tiene anemia.");
  } else {
    print("\nResultado: NEGATIVO — No tiene anemia.");
  }
}
