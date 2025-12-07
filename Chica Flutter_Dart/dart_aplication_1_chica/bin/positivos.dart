import 'dart:io';
import 'dart:math';

void main() {
  print("Ingrese el lado A:");
  double A = double.parse(stdin.readLineSync()!);

  print("Ingrese el lado B:");
  double B = double.parse(stdin.readLineSync()!);

  print("Ingrese el lado C:");
  double C = double.parse(stdin.readLineSync()!);

  if (A + B > C && A + C > B && B + C > A) {
    print("\nEs un triángulo válido.");

    if (A == B && B == C) {
      print("El triángulo es equilátero.");
    } else if (A == B || A == C || B == C) {
      print("El triángulo es isósceles.");
    } else {
      print("El triángulo es escaleno.");
    }

    double S = (A + B + C) / 2;
    double area = sqrt(S * (S - A) * (S - B) * (S - C));

    print("Área del triángulo: $area");
  } else {
    print("Los valores NO forman un triángulo.");
  }
}
