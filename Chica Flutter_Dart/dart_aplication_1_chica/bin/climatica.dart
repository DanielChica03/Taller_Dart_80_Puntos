import 'dart:io';

void main() {
  int dias = 0, errores = 0;
  double sumaMax = 0, sumaMin = 0;

  while (true) {
    print("Temp max y min (0 0 para salir): ");
    List<String> t = stdin.readLineSync()!.split(" ");
    double max = double.parse(t[0]);
    double min = double.parse(t[1]);

    if (max == 0 && min == 0) break;

    dias++;

    if (max < 14 || max > 30 || min < 14 || min > 30)
      errores++;
    else {
      sumaMax += max;
      sumaMin += min;
    }
  }

  print("Días: $dias");
  print("Media máx: ${sumaMax / dias}");
  print("Media min: ${sumaMin / dias}");
  print("Errores: $errores");
  print("Porcentaje: ${(errores / dias) * 100}%");
}
