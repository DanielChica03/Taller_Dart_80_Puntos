import 'dart:io';

void main() {
  const int N = 64;
  const int NT = 23;

  double sumaPromedios = 0;
  double mayor = -1, menor = 999;
  int numMayor = 0, numMenor = 0;
  int menores3 = 0, mayores4 = 0, entre45y5 = 0;

  for (int i = 1; i <= N; i++) {
    stdout.write("Total de puntos del cuestionario $i: ");
    double PT = double.parse(stdin.readLineSync()!);

    double prom = PT / NT;
    sumaPromedios += prom;

    if (prom > mayor) {
      mayor = prom;
      numMayor = i;
    }
    if (prom < menor) {
      menor = prom;
      numMenor = i;
    }

    if (prom < 3) menores3++;
    if (prom > 4) mayores4++;
    if (prom >= 4.5 && prom <= 5) entre45y5++;
  }

  print("Promedio general: ${sumaPromedios / N}");
  print("Promedio más alto: $mayor (cuestionario $numMayor)");
  print("Promedio más bajo: $menor (cuestionario $numMenor)");

  print("Porcentaje (<3 respecto >4): ${(menores3 / mayores4) * 100}%");
  print("Porcentaje promedios 4.5–5: ${(entre45y5 / N) * 100}%");
}
