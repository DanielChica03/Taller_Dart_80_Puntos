import 'dart:io';

void main() {
  const p1 = 10.0, p2 = 20.0, p3 = 30.0;

  stdout.write("Cantidad de sucursales: ");
  int s = int.parse(stdin.readLineSync()!);

  int sucursalesCumplen = 0;

  for (int i = 1; i <= s; i++) {
    print("Código sucursal: ");
    String cod = stdin.readLineSync()!;

    print("Monto esperado: ");
    double esperado = double.parse(stdin.readLineSync()!);

    print("Cantidad de puntos de venta: ");
    int p = int.parse(stdin.readLineSync()!);

    double totalSuc = 0;
    double mayorCom = -1;
    String codMayor = "";

    for (int j = 1; j <= p; j++) {
      print("Código punto de venta: ");
      String cp = stdin.readLineSync()!;

      print("Unidades prod.1: ");
      int u1 = int.parse(stdin.readLineSync()!);
      print("Unidades prod.2: ");
      int u2 = int.parse(stdin.readLineSync()!);
      print("Unidades prod.3: ");
      int u3 = int.parse(stdin.readLineSync()!);

      double bruto = u1 * p1 + u2 * p2 + u3 * p3;
      double com = bruto * 0.10;
      double neto = bruto - com;

      print("Punto $cp → Neto: $neto Comisión: $com");

      int menorU = u1 <= u2 && u1 <= u3 ? 1 : (u2 <= u3 ? 2 : 3);
      print("Producto con menor unidades: $menorU\n");

      totalSuc += neto;

      if (com > mayorCom) {
        mayorCom = com;
        codMayor = cp;
      }
    }

    print("Sucursal $cod Total vendido: $totalSuc");
    print("Porcentaje respecto esperado: ${(totalSuc * 100) / esperado}%");
    print("Punto mayor comisión: $codMayor con $mayorCom\n");

    if (totalSuc >= esperado) sucursalesCumplen++;
  }

  print("Porcentaje de sucursales que alcanzaron lo esperado: ${(sucursalesCumplen * 100) / s}%");
}
