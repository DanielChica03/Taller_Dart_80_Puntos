import 'dart:io';

void main() {
  int abc = 0;
  int ab = 0;
  int ac = 0;
  int bc = 0;
  int a = 0;
  int b = 0;
  int c = 0;
  int ninguno = 0;

  for (int i = 1; i <= 100; i++) {
    print("\nPersona $i:");
    print("¿Respondió bien la pregunta 1? (1 = sí, 0 = no)");
    int p1 = int.parse(stdin.readLineSync()!);

    print("¿Respondió bien la pregunta 2?");
    int p2 = int.parse(stdin.readLineSync()!);

    print("¿Respondió bien la pregunta 3?");
    int p3 = int.parse(stdin.readLineSync()!);

    if (p1 == 1 && p2 == 1 && p3 == 1) abc++;

    if (p1 == 1 && p2 == 1 && p3 == 0) ab++;
    if (p1 == 1 && p2 == 0 && p3 == 1) ac++;
    if (p1 == 0 && p2 == 1 && p3 == 1) bc++;

    if (p1 == 1) a++;
    if (p2 == 1) b++;
    if (p3 == 1) c++;

    if (p1 == 0 && p2 == 0 && p3 == 0) ninguno++;
  }

  print("\nResultados:");
  print("a) Las 3 correctas: $abc");
  print("b) Solo 1 y 2: $ab");
  print("c) Solo 1 y 3: $ac");
  print("d) Solo 2 y 3: $bc");
  print("e) Al menos la 1: $a");
  print("f) Al menos la 2: $b");
  print("g) Al menos la 3: $c");
  print("h) Ninguna: $ninguno");
}
