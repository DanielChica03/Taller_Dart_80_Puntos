import 'dart:io';

void main() {
  while (true) {
    print("Nombre (FIN salir): ");
    String nombre = stdin.readLineSync()!;
    if (nombre.toUpperCase()=='FIN') break;
    print("Cedula: ");
    String ced = stdin.readLineSync()!;
    print("Tipo (obrero/adm/ejec): ");
    String tipo = stdin.readLineSync()!;
    print("Hijos (0-5): ");
    int hijos = int.parse(stdin.readLineSync()!);
    print("Asistencia % (0-100): ");
    double asis = double.parse(stdin.readLineSync()!);

    double basico = tipo.toLowerCase().startsWith('o')?100000 : tipo.toLowerCase().startsWith('a')?165500 : 250000;
    double aporteHijos = basico * 0.10 * (hijos>5?5:hijos); // hasta 5 hijos
    double aporteAsis = asis>95? basico * 0.05 : 0;
    double caja = basico * 0.10;
    double seguro = basico * 0.02;
    double neto = basico + aporteHijos + aporteAsis - caja - seguro;

    print("Registro: $nombre - $ced");
    print("Basico: $basico  Caja: $caja  Seguro: $seguro  Neto: ${neto.toStringAsFixed(2)}\n");
  }
}
