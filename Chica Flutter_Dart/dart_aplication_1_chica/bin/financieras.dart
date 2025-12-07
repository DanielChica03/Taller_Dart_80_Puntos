import 'dart:io';

void main() {
  print("Ingrese el capital actual:");
  double capital = double.parse(stdin.readLineSync()!);

  double prestamo = 0;
  double nuevoSaldo = capital;

  if (capital < 0) {
    prestamo = 10000 - capital;
    nuevoSaldo = 10000;
  } else if (capital <= 20000) {
    prestamo = 20000 - capital;
    nuevoSaldo = 20000;
  } else {
    prestamo = 0;
    nuevoSaldo = capital;
  }

  double equipo = 5000;
  double mobiliario = 2000;

  double restante = nuevoSaldo - equipo - mobiliario;
  double insumos = restante / 2;
  double incentivos = restante / 2;

  print("\nResultados:");
  print("Préstamo solicitado: $prestamo");
  print("Para insumos: $insumos");
  print("Para incentivos: $incentivos");
}
