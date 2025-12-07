import 'dart:io';

void main() {
  stdout.write("Número: ");
  double N = double.parse(stdin.readLineSync()!);

  if (N <= 0) {
    print("Debe ser positivo.");
    return;
  }

  double X = 0.1;
  double RN;

  do {
    RN = (X + N / X) / 2;
    X = RN;
  } while ((X - RN).abs() >= 0.000001);

  print("Raíz aproximada: $RN");
}
