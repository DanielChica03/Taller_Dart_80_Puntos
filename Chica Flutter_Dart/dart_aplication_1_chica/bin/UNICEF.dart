import 'dart:io';

void main() {
  int tachira = 0, dc = 0, total = 0;
  int g1 = 0, g2 = 0, g3 = 0, g4 = 0;
  int ninos = 0, ninas = 0;

  while (true) {
    print("Nombre (FIN para salir): ");
    String n = stdin.readLineSync()!;
    if (n.toUpperCase() == "FIN") break;

    print("Sexo (M/F): ");
    String s = stdin.readLineSync()!.toUpperCase();

    print("Edad: ");
    int e = int.parse(stdin.readLineSync()!);

    print("Estado: ");
    String est = stdin.readLineSync()!.toUpperCase();

    total++;

    if (est == "TACHIRA") tachira++;
    if (est == "DC") dc++;

    if (e < 1) g1++;
    else if (e <= 3) g2++;
    else if (e <= 6) g3++;
    else g4++;

    if (s == "M") ninos++;
    else ninas++;
  }

  print("Táchira: ${(tachira / total) * 100}%");
  print("DC: ${(dc / total) * 100}%");
  print("Grupo1: $g1");
  print("Grupo2: $g2");
  print("Grupo3: $g3");
  print("Grupo4: $g4");
  print("Niños: $ninos (${(ninos / total) * 100}%)");
  print("Niñas: $ninas (${(ninas / total) * 100}%)");
}
