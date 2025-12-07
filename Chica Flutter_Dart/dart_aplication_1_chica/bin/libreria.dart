import 'dart:io';

void main() {
  print("Cantidad de autores: ");
  int a = int.parse(stdin.readLineSync()!);

  int totalLibros = 0;
  int totalCF = 0, totalCF_R = 0;

  int mayorCant = -1;
  String autorMayor = "";

  for (int i = 1; i <= a; i++) {
    print("Apellido autor: ");
    String ape = stdin.readLineSync()!;

    print("Cantidad de libros: ");
    int n = int.parse(stdin.readLineSync()!);

    int totalPag = 0;
    int mayorPag = -1;
    String codMayor = "";

    for (int j = 1; j <= n; j++) {
      print("Código libro: ");
      String cod = stdin.readLineSync()!;

      print("Género: ");
      String gen = stdin.readLineSync()!;

      print("Número de páginas: ");
      int pag = int.parse(stdin.readLineSync()!);

      totalPag += pag;

      if (pag > mayorPag) {
        mayorPag = pag;
        codMayor = cod;
      }

      if (gen == "ciencia ficcion") totalCF++;
      if (gen == "ciencia ficcion" || gen == "romance") totalCF_R++;
      totalLibros++;
    }

    print("Autor: $ape");
    print("Libro con mayor páginas: $codMayor ($mayorPag pag)\n");

    if (n > mayorCant) {
      mayorCant = n;
      autorMayor = ape;
    }
  }

  print("Porcentaje ciencia ficción: ${(totalCF * 100) / totalLibros}%");
  print("Cantidad CF + Romance: $totalCF_R");
  print("Autor con más libros: $autorMayor ($mayorCant)");
}
