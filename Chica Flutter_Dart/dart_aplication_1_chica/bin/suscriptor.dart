import 'dart:io';

void main() {
  print("Ingrese la lectura anterior:");
  int lecturaAnterior = int.parse(stdin.readLineSync()!);
  
  print("Ingrese la lectura actual:");
  int lecturaActual = int.parse(stdin.readLineSync()!);

  int consumo = lecturaActual - lecturaAnterior;
  double tarifa = 0;

  if (consumo <= 100) {
    tarifa = 2622.00;
  } else if (consumo <= 300) {
    tarifa = 79.78;
  } else if (consumo <= 500) {
    tarifa = 89.52;
  } else {
    tarifa = 97.95;
  }

  double monto = consumo * tarifa;

  print("\nConsumo total: $consumo kWh");
  print("Tarifa aplicada: $tarifa Bs por kWh");
  print("Monto total a pagar: $monto Bs");
}
