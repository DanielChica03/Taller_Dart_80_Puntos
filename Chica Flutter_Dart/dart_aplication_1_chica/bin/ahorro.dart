import 'dart:io';

void main(){
  print("Ingrese la capital a depositar:");
  double cap = double.parse(stdin.readLineSync() ?? '0');

  print("Ingrese la tasa de interes");
  double tasa = double.parse(stdin.readLineSync()?? '0');

  print("Ingrese la duracion del deposito en semanas:");
  double duracion = double.parse(stdin.readLineSync()?? '0');

  int dias = (duracion * 7).toInt();

  for (int i=1; i <= dias;i++){
    double interes = tasa *cap / 365;
    cap += interes;
  }
  print ("El monto final es: $cap");
}