import 'dart:io';

void main() {
  print("Cantidad de Estados: ");
  int e = int.parse(stdin.readLineSync()!);

  String estadoMayor = "";
  double mayorPorcProfDes = -1;

  for (int es = 1; es <= e; es++) {
    print("Código Estado: ");
    String codEst = stdin.readLineSync()!;

    print("Cantidad de ciudades del estado: ");
    int c = int.parse(stdin.readLineSync()!);

    int totalProfDesEstado = 0;
    int totalPersonasEstado = 0;

    for (int ci = 1; ci <= c; ci++) {
      print("Código ciudad: ");
      String codCiu = stdin.readLineSync()!;

      print("Cantidad municipios ciudad: ");
      int m = int.parse(stdin.readLineSync()!);

      int cant50 = 0;
      int totalCiu = 0;

      for (int mu = 1; mu <= m; mu++) {
        print("Código municipio: ");
        String codMun = stdin.readLineSync()!;

        print("Personas en municipio: ");
        int per = int.parse(stdin.readLineSync()!);

        int cantReq = 0;

        for (int p = 1; p <= per; p++) {
          print("Edad: ");
          int edad = int.parse(stdin.readLineSync()!);

          print("Nivel educ (N,B,S,P): ");
          String niv = stdin.readLineSync()!;

          print("Situación (D,E): ");
          String sit = stdin.readLineSync()!;

          if (sit == "D" && edad > 25 && niv == "N") cantReq++;

          if (niv == "P") totalPersonasEstado++;
          if (niv == "P" && sit == "D") totalProfDesEstado++;
        }

        print("Municipio $codMun → Cantidad condición: $cantReq");

        totalCiu += cantReq;
      }

      if (totalCiu > 0) {
        if (totalCiu > (totalCiu / 2)) print("Ciudad $codCiu supera 50%");
      }
    }

    double porc = (totalProfDesEstado * 100) / totalPersonasEstado;

    if (porc > mayorPorcProfDes) {
      mayorPorcProfDes = porc;
      estadoMayor = codEst;
    }
  }

  print("Estado con mayor % de profesionales desempleados: $estadoMayor");
}
