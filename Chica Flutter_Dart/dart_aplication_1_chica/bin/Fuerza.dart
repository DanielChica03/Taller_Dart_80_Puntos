import 'dart:io';
import 'dart:math';

void main() {
  const double G = 6.67259e-11;
  const double M = 5.97e24;

  double mayorF = -1, menorF = 999999999999;
  double sumaF = 0, sumaM = 0;
  double mayorM = -1;
  double menorAlt = 999999999999, mayorAlt = -1;
  int n = 0;

  while (true) {
    print("Satélite (FIN para salir): ");
    String s = stdin.readLineSync()!;
    if (s.toUpperCase() == "FIN") break;

    print("Masa: ");
    double m = double.parse(stdin.readLineSync()!);

    print("Altura: ");
    double h = double.parse(stdin.readLineSync()!);

    double r = h;
    double F = G * m * M / pow(r, 2);

    if (F > mayorF) mayorF = F;
    if (F < menorF) menorF = F;

    if (m > mayorM) mayorM = m;

    if (h < menorAlt) menorAlt = h;
    if (h > mayorAlt) mayorAlt = h;

    sumaF += F;
    sumaM += m;
    n++;
  }

  print("Mayor F: $mayorF");
  print("Menor F: $menorF");
  print("Promedio F: ${sumaF / n}");
  print("Mayor masa: $mayorM");
  print("Promedio masa: ${sumaM / n}");
  print("Menor altura: $menorAlt");
  print("Mayor altura: $mayorAlt");
}
