import 'package:dart_aplication_1_chica/dart_aplication_1_chica.dart' as dart_aplication_1_chica;

void main(List<String> arguments) {
  double a=23;
  double b=22;
  double c=15;
  
  double promedio=(a+b+c)/2;
  double area=promedio*(promedio-a)*(promedio-b)*(promedio-c);
  print("El area del triangulo es: $area");
}
