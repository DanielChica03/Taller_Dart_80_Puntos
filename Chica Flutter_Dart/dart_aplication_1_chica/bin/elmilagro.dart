import 'dart:io';

void main() {
  int limite = 0, totalGeneral = 0, cantObreros = 0, cantCumplen = 0;
  String nombreMayor = "";
  int mayorProd = -1;

  print("Cantidad de obreros: ");
  cantObreros = int.parse(stdin.readLineSync()!);

  print("Límite semanal por obrero: ");
  limite = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= cantObreros; i++) {
    print("Nombre del obrero $i: ");
    String nombre = stdin.readLineSync()!;

    int totalSem = 0;

    for (int d = 1; d <= 6; d++) {
      print("Producción día $d: ");
      totalSem += int.parse(stdin.readLineSync()!);
    }

    double porc = (totalSem * 100) / limite;

    print("Obrero: $nombre");
    print("Total semanal: $totalSem");
    print("Porcentaje respecto al límite: ${porc.toStringAsFixed(2)}%\n");

    totalGeneral += totalSem;

    if (totalSem >= limite) cantCumplen++;

    if (totalSem > mayorProd) {
      mayorProd = totalSem;
      nombreMayor = nombre;
    }
  }

  print("Porcentaje de obreros que alcanzan el límite: ${(cantCumplen * 100) / cantObreros}%");
  print("Obrero que más produjo: $nombreMayor ($mayorProd)");
  print("Promedio general semanal: ${totalGeneral / cantObreros}");
}
