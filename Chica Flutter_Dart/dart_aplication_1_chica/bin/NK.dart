import 'dart:io';

void main() {
  print("Ingrese N:");
  int n = int.parse(stdin.readLineSync()!);

  print("Ingrese K,este debe ser menor que N:");
  int k = int.parse(stdin.readLineSync()!);

  print("Contador");
  for (int i = n; i >= k; i--) {
    print(i);
  }
}
