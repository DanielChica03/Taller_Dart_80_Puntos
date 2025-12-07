import 'dart:io';

void main() {
  print("Ingrese su día de nacimiento:");
  int dia = int.parse(stdin.readLineSync()!);

  print("Ingrese su mes de nacimiento (1-12):");
  int mes = int.parse(stdin.readLineSync()!);

  print("Ingrese su año de nacimiento:");
  int anio = int.parse(stdin.readLineSync()!);

  DateTime hoy = DateTime.now();
  int edad = hoy.year - anio;

  if (mes > hoy.month || (mes == hoy.month && dia > hoy.day)) {
    edad--; // Aún no ha cumplido años este año
  }

  String signo = "";

  if ((dia >= 21 && mes == 3) || (dia <= 20 && mes == 4)) {
    signo = "Aries";
  } else if ((dia >= 21 && mes == 4) || (dia <= 20 && mes == 5)) {
    signo = "Tauro";
  } else if ((dia >= 22 && mes == 5) || (dia <= 21 && mes == 6)) {
    signo = "Géminis";
  } else if ((dia >= 22 && mes == 6) || (dia <= 22 && mes == 7)) {
    signo = "Cáncer";
  } else if ((dia >= 23 && mes == 7) || (dia <= 23 && mes == 8)) {
    signo = "Leo";
  } else if ((dia >= 24 && mes == 8) || (dia <= 22 && mes == 9)) {
    signo = "Virgo";
  } else if ((dia >= 23 && mes == 9) || (dia <= 22 && mes == 10)) {
    signo = "Libra";
  } else if ((dia >= 23 && mes == 10) || (dia <= 22 && mes == 11)) {
    signo = "Escorpio";
  } else if ((dia >= 22 && mes == 11) || (dia <= 21 && mes == 12)) {
    signo = "Sagitario";
  } else if ((dia >= 22 && mes == 12) || (dia <= 20 && mes == 1)) {
    signo = "Capricornio";
  } else if ((dia >= 21 && mes == 1) || (dia <= 19 && mes == 2)) {
    signo = "Acuario";
  } else if ((dia >= 20 && mes == 2) || (dia <= 20 && mes == 3)) {
    signo = "Piscis";
  } else {
    signo = "Fecha inválida";
  }

  print("Tu signo zodiacal es: $signo");
  print("Tu edad es: $edad años");
}
