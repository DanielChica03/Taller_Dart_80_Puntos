import 'dart:io';

void main() {

  print("Ingrese la categoría del trabajador (1 - 4):");
  int categoria = int.parse(stdin.readLineSync()!);

  print("Ingrese el sueldo del trabajador:");
  double sueldo = double.parse(stdin.readLineSync()!);


  if (categoria == 1) { 
  double aumento= sueldo * 0.15; 
  double sueldoF= sueldo + aumento; 
  print("El sueldo final es: $sueldoF"); 
  } 
  else if (categoria == 2) { 
  double aumento= sueldo * 0.10; 
  double sueldoF= sueldo + aumento; 
  print("El sueldo final es: $sueldoF"); 
  } else if (categoria == 3) { 
  double aumento= sueldo * 0.08; 
  double sueldoF= sueldo + aumento; 
  print("El sueldo final es: $sueldoF"); 
  } 
  else if (categoria == 4) { 
  double aumento= sueldo * 0.07; 
  double sueldoF= sueldo + aumento; 
  print("El sueldo final es: $sueldoF"); 
  } 
  else { 
  print("Categoría inválida."); return;
  }
}
