import 'dart:io';

void main() {
  print("Ingrese el precio del automóvil y terreno:");
  double precio = double.parse(stdin.readLineSync()!);

  print("Ingrese el porcentaje de devaluación del automóvil por año (%):");
  double devaluacion = double.parse(stdin.readLineSync()!);

  print("Ingrese el porcentaje de incremento del terreno por año (%):");
  double incremento = double.parse(stdin.readLineSync()!);

  double valorAuto = precio * (1 - (devaluacion / 100) * 3);
  double valorTerreno = precio * (1 + (incremento / 100) * 3);

  double devaluacionTotal = precio - valorAuto;
  double incrementoTotal = valorTerreno - precio;

  if (devaluacionTotal <= incrementoTotal / 2) {
    print("\nDebe comprar el AUTOMÓVIL.");
  } else {
    print("\nDebe comprar el TERRENO.");
  }

  print("\nDevaluación total del auto: $devaluacionTotal");
  print("Incremento total del terreno: $incrementoTotal");
}
