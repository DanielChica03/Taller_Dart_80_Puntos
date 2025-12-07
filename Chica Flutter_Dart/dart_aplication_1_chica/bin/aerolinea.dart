import 'dart:io';

int tarifa(double kg){
  if (kg <= 3) return 0;
  if (kg <= 6) return 600;
  if (kg <= 9) return 1200;
  if (kg <= 12) return 1500;
  if (kg <= 15) return 2000;
  return 2500;
}

void main() {

  while (true) {
    print("Nro vuelo (0 fin): ");
    String s = stdin.readLineSync()!;
    if (s=='0') break;
    String vuelo = s;
    print("Codigo abordo: ");
    String cod = stdin.readLineSync()!;

    while (true) {
      print("Pasajero (FIN para fin vuelo): ");
      String p = stdin.readLineSync()!;
      if (p.toUpperCase() == 'FIN') break;
      print("Nro maletas: ");
      int m = int.parse(stdin.readLineSync()!);
      double totalKg=0;
      String maxCode='';
      double maxKg = -1;
      double montoTotal = 0;
      for(int i=1;i<=m;i++){
        print("Codigo maleta: ");
        String mc = stdin.readLineSync()!;
        print("Peso maleta (kg): ");
        double pk = double.parse(stdin.readLineSync()!);
        totalKg += pk;
        if(pk>maxKg){ maxKg=pk; maxCode=mc;}
        montoTotal += tarifa(pk);
      }
      print("Pasajero: $p Vuelo: $vuelo Codigo: $cod Kg tot: $totalKg Monto: $montoTotal");
      print("Maleta mayor: $maxCode peso: $maxKg");
    }
  }
}
