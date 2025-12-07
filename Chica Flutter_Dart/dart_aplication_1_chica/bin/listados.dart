import 'dart:io';

void main() {
  String estadoActual = "";
  String agenciaActual = "";

  double totalEstado = 0;
  double totalAgencia = 0;
  int clientesAgencia = 0;
  double mayorDeudaAgencia = -1;
  String clienteMayor = "";

  double maxAgencias = 0;
  int agenciasContadas = 0;
  double sumaMaxAgencias = 0;

  while (true) {
    print("Estado (FIN para salir): ");
    String est = stdin.readLineSync()!;
    if (est.toUpperCase() == "FIN") break;

    stdout.write("Agencia: ");
    String ag = stdin.readLineSync()!;

    estadoActual = est;
    agenciaActual = ag;

    totalAgencia = 0;
    clientesAgencia = 0;
    mayorDeudaAgencia = -1;

    while (true) {
      print("Cliente (0 para cambiar agencia): ");
      String c = stdin.readLineSync()!;
      if (c == "0") break;

      print("Nombre: ");
      String nom = stdin.readLineSync()!;
      print("Dirección: ");
      String dir = stdin.readLineSync()!;

      int cantPag = 0;
      double totalCliente = 0;

      print("RECIBO");
      print("Cliente: $c  $nom  $dir  Estado: $est  Agencia: $ag");

      while (true) {
        print("Pagaré (0 para terminar): ");
        String num = stdin.readLineSync()!;
        if (num == "0") break;

        print("Fecha: ");
        String fecha = stdin.readLineSync()!;
        print("Monto: ");
        double monto = double.parse(stdin.readLineSync()!);

        print("$num  $fecha  $monto");

        totalCliente += monto;
        cantPag++;
      }

      print("Total pagarés: $cantPag");
      print("Monto total: $totalCliente\n");

      totalAgencia += totalCliente;
      clientesAgencia++;

      if (totalCliente > mayorDeudaAgencia) {
        mayorDeudaAgencia = totalCliente;
        clienteMayor = c;
      }
    }

    print("Agencia $ag - Estado $est");
    print("Clientes pendientes: $clientesAgencia");
    print("Monto total: $totalAgencia");
    print("Cliente mayor deuda: $clienteMayor\n");

    totalEstado += totalAgencia;

    if (totalAgencia > maxAgencias) {
      maxAgencias = totalAgencia;
    }

    sumaMaxAgencias += totalAgencia;
    agenciasContadas++;
  }

  print("Monto total Estados: $totalEstado");
  print("Promedio máximos agencias: ${sumaMaxAgencias / agenciasContadas}");
}
