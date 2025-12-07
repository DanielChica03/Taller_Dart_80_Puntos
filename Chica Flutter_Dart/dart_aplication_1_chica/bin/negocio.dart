import 'dart:io';

void main() {
  print("Ingrese el monto total de inversión requerida:");
  double inversionTotal = double.parse(stdin.readLineSync()!);

  print("Ingrese el monto que el banco presta por hipotecar la casa:");
  double hipoteca = double.parse(stdin.readLineSync()!);

  double aportePersona = 0;
  double aporteSocio = 0;

  if (hipoteca < 1000000) {

    aportePersona = inversionTotal / 2;
    aporteSocio = inversionTotal / 2;
  } else {

    aportePersona = hipoteca;
    double faltante = inversionTotal - hipoteca;
    aportePersona += faltante / 2;
    aporteSocio = faltante / 2;
  }

  print("\nAporte de la persona: $aportePersona");
  print("Aporte del socio: $aporteSocio");
}
