import 'dart:io';

void main() {
  int mayorPob = -1, menorPob = 999999999;
  String nomMayor = "", nomMenor = "";

  int total5 = 0;

  for (int est = 1; est <= 5; est++) {
    print("Nombre del Estado $est: ");
    String nombre = stdin.readLineSync()!;

    print("Cantidad de municipios en $nombre: ");
    int m = int.parse(stdin.readLineSync()!);

    int sumaEstado = 0;

    for (int i = 1; i <= m; i++) {
      print("Habitantes municipio $i: ");
      sumaEstado += int.parse(stdin.readLineSync()!);
    }

    if (sumaEstado > mayorPob) {
      mayorPob = sumaEstado;
      nomMayor = nombre;
    }

    if (sumaEstado < menorPob) {
      menorPob = sumaEstado;
      nomMenor = nombre;
    }

    total5 += sumaEstado;
  }

  print("Total país: ");
  int totalPais = int.parse(stdin.readLineSync()!);

  print("Estado mayor población: $nomMayor ($mayorPob)");
  print("Estado menor población: $nomMenor ($menorPob)");
  print("Porcentaje respecto al país: ${(total5 * 100) / totalPais}%");
  print("Promedio habitantes por estado: ${total5 / 5}");
}
