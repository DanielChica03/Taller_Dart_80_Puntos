import 'dart:io';
void main(){
  print("Ingrese el numero que sera el multiplicador:");
  int a = int.parse(stdin.readLineSync()!);

  print("Ingrese el numero que sera el multiplicando:");
  int b = int.parse(stdin.readLineSync()!);

  int producto = 0;

  while (a >= 1){
    if (a% 2 != 0) producto += b;
    a = a ~/ 2;
    b = b * 2;
  print("Multiplicador");
  print("$a");
  print("Multiplicando");
  print("$b");

  }
  print("El resultado es: $producto");

}