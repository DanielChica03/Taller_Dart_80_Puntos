import 'dart:io';

void main() {
  int v1 = 0, v2 = 0, v3 = 0;
  int extImpar = 0, sumaEdades = 0, n = 0;
  double total = 0;

  while (true) {
    stdout.write("Nombre (FIN para salir): ");
    String nombre = stdin.readLineSync()!;
    if (nombre.toUpperCase() == "FIN") break;

    stdout.write("Nac (V/E): ");
    String nac = stdin.readLineSync()!.toUpperCase();

    stdout.write("Edad: ");
    int edad = int.parse(stdin.readLineSync()!);

    stdout.write("Tipo (1/2/3): ");
    int tipo = int.parse(stdin.readLineSync()!);

    stdout.write("Horas: ");
    int horas = int.parse(stdin.readLineSync()!);

    int pago = [5000, 10000, 15000][tipo];
    double sueldo = pago * horas.toDouble() ;
    double seguro = sueldo > 100000 ? sueldo * 0.03 : 0;

    print("Sueldo: $sueldo | Seguro: $seguro\n");

    if (nac == "V") {
      if (tipo == 1) v1++;
      if (tipo == 2) v2++;
      if (tipo == 3) v3++;
    } else if (edad.isOdd) extImpar++;

    sumaEdades += edad;
    total += sueldo - seguro;
    n++;
  }

  print("\n--- RESULTADOS ---");
  print("Venezolanos Tipo 1: $v1");
  print("Venezolanos Tipo 2: $v2");
  print("Venezolanos Tipo 3: $v3");
  print("Extranjeros edad impar: $extImpar");
  print("Promedio edad: ${sumaEdades / n}");
  print("Total a pagar: $total");
}
