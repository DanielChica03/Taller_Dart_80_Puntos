import 'dart:io';

void main() {
  double sumaNinos = 0, sumaJovenes = 0, sumaAdultos = 0, sumaViejos = 0;

  int contNinos = 0, contJovenes = 0, contAdultos = 0, contViejos = 0;

  for (int i = 1; i <= 100; i++) {
    print("Persona $i:");

    stdout.write("Edad: ");
    int edad = int.parse(stdin.readLineSync()!);

    stdout.write("Peso: ");
    double peso = double.parse(stdin.readLineSync()!);

    if (edad <= 12) {
      sumaNinos += peso;
      contNinos++;
    } else if (edad <= 29) {
      sumaJovenes += peso;
      contJovenes++;
    } else if (edad <= 59) {
      sumaAdultos += peso;
      contAdultos++;
    } else {
      sumaViejos += peso;
      contViejos++;
    }

  }

  double promNinos   = contNinos > 0 ? sumaNinos / contNinos : 0;
  double promJovenes = contJovenes > 0 ? sumaJovenes / contJovenes : 0;
  double promAdultos = contAdultos > 0 ? sumaAdultos / contAdultos : 0;
  double promViejos  = contViejos > 0 ? sumaViejos   / contViejos  : 0;

  print("Promedio de peso por categoría:");
  print("Niños:   $promNinos");
  print("Jóvenes: $promJovenes");
  print("Adultos: $promAdultos");
  print("Viejos:  $promViejos");
}
