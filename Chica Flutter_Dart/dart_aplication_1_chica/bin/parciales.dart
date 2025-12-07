import 'dart:io';

void main() {
  double menorProg = 999, sumaProg = 0;
  int noIng = 0, siIng = 0, aprobTodos = 0;
  int reprobMate = 0, presentMate = 0, total = 0;

  while (true) {
    print("Alumno (FIN para salir): ");
    String alumno = stdin.readLineSync()!;
    if (alumno.toUpperCase() == "FIN") break;

    print("Matemática (-1 no presentó): ");
    double mate = double.parse(stdin.readLineSync()!);

    print("Programación: ");
    double prog = double.parse(stdin.readLineSync()!);

    print("Inglés (-1 no presentó): ");
    double ing = double.parse(stdin.readLineSync()!);

    if (prog < menorProg) menorProg = prog;

    if (ing == -1) noIng++; else siIng++;

    if (mate >= 0) {
      presentMate++;
      if (mate < 3) reprobMate++;
    }

    if (mate >= 3 && prog >= 3 && ing >= 3) aprobTodos++;

    sumaProg += prog;
    total++;
  }

  print("\n--- RESULTADOS ---");
  print("Menor nota de Programación: $menorProg");
  print("Porcentaje NO presentaron inglés: ${(noIng / (siIng == 0 ? 1 : siIng)) * 100}%");
  print("Aprobaron todas: $aprobTodos");
  print("Promedio Programación: ${sumaProg / total}");
  print("Porcentaje reprobados en Matemática: ${(reprobMate / (presentMate == 0 ? 1 : presentMate)) * 100}%");
}
