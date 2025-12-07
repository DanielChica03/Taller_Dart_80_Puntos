import 'dart:io';
import 'dart:math';

void main() {

  stdout.write('Ingrese el coeficiente A: ');
  double a = double.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese el coeficiente B: ');
  double b = double.parse(stdin.readLineSync()!);
  
  stdout.write('Ingrese el coeficiente C: ');
  double c = double.parse(stdin.readLineSync()!);

  double d = (b * b) - (4 * a * c);

  if (d > 0) {
    double raizD = sqrt(d);
    double x1 = (-b + raizD) / (2 * a);
    double x2 = (-b - raizD) / (2 * a);

    print('La ecuación tiene dos soluciones reales distintas:');
    print('X1 = ${x1.toStringAsFixed(4)}');
    print('X2 = ${x2.toStringAsFixed(4)}');

  } else if (d == 0) {
    double x = -b / (2 * a);

    print('La ecuación tiene una solución real doble:');
    print('X1 = X2 = ${x.toStringAsFixed(4)}');

  } else {
    print('La ecuación no tiene solución en los números Reales (D < 0).');
  }
}