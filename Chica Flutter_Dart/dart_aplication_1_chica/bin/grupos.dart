import 'dart:io';

void main() {
  print("Cantidad de grupos: ");
  int g = int.parse(stdin.readLineSync()!);

  double promGeneral = 0;

  for (int grupo = 1; grupo <= g; grupo++) {
    print("Cantidad de alumnos del grupo $grupo: ");
    int n = int.parse(stdin.readLineSync()!);

    double sumaGrupo = 0;

    for (int alumno = 1; alumno <= n; alumno++) {
      print("Cantidad de materias alumno $alumno: ");
      int m = int.parse(stdin.readLineSync()!);

      double sumaAlumno = 0;

      for (int mat = 1; mat <= m; mat++) {
        double sumaMat = 0;

        for (int c = 1; c <= 3; c++) {
          print("Nota $c materia $mat: ");
          sumaMat += double.parse(stdin.readLineSync()!);
        }

        sumaAlumno += (sumaMat / 3);
      }

      double promAlumno = sumaAlumno / m;
      print("Promedio alumno $alumno: $promAlumno");

      sumaGrupo += promAlumno;
    }

    double promGrupo = sumaGrupo / n;
    print("Promedio del grupo $grupo: $promGrupo\n");

    promGeneral += promGrupo;
  }

  print("Promedio general: ${promGeneral / g}");
}
