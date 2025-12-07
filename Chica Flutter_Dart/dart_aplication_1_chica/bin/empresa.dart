import 'dart:io';

void main() {
  while (true) {
    print("Número de factura (0 para terminar): ");
    int num = int.parse(stdin.readLineSync()!);
    if (num == 0) break;

    print("Cliente: ");
    String cliente = stdin.readLineSync()!;

    print("Monto factura: ");
    double monto = double.parse(stdin.readLineSync()!);

    print("Días transcurridos: ");
    int dias = int.parse(stdin.readLineSync()!);

    double interes = 0, descuento = 0;

    if (dias >= 60)
      interes = monto * 0.08;
    else if (dias >= 31 && dias <= 59)
      interes = monto * 0.06;
    else if (dias < 15)
      descuento = monto * 0.02;

    double total = monto + interes - descuento;

    print("Factura $num - Cliente: $cliente");
    print("Interés: $interes");
    print("Descuento: $descuento");
    print("Total a pagar: $total");
    print("");
  }
}
