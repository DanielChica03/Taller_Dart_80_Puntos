import 'dart:io';

void main() {
  int total = 0;
  double sumWomenAge = 0, sumMenAge = 0;
  int cntWomen = 0, cntMen = 0;
  Map<String,int> civilCount = {}; // soltero, casado, etc
  Map<String,int> specCount = {};
  int womenAdult = 0; // >21
  int menYoung = 0; // >17 && <21
  int menSingle = 0, womenSingle = 0;

  while (true) {
    print("Nombre (FIN para salir): ");
    String name = stdin.readLineSync()!;
    if (name.toUpperCase() == "FIN") break;
    print("Edad: ");
    int age = int.parse(stdin.readLineSync()!);
    print("Sexo (M/F): ");
    String sex = stdin.readLineSync()!;
    print("Estado civil: ");
    String estado = stdin.readLineSync()!;
    print("Especialidad: ");
    String esp = stdin.readLineSync()!;

    total++;
    // sexo
    if (sex.toUpperCase() == 'F') { sumWomenAge += age; cntWomen++; if (age>21) womenAdult++; if (estado.toLowerCase().contains('solter')) womenSingle++; }
    else { sumMenAge += age; cntMen++; if (age>17 && age<21) menYoung++; if (estado.toLowerCase().contains('solter')) menSingle++; }

    civilCount[estado] = (civilCount[estado] ?? 0) + 1;
    specCount[esp] = (specCount[esp] ?? 0) + 1;
  }

  print("Promedio edad mujeres: ${cntWomen>0? (sumWomenAge/cntWomen).toStringAsFixed(2): '0'}");
  print("Promedio edad hombres: ${cntMen>0? (sumMenAge/cntMen).toStringAsFixed(2): '0'}");
  print("Cant mujeres: $cntWomen, Cant hombres: $cntMen");
  civilCount.forEach((k,v)=> print("Estado $k: ${ (total>0? (v/total*100).toStringAsFixed(2): '0')} %"));
  specCount.forEach((k,v)=> print("Especialidad $k: $v -> ${ (total>0? (v/total*100).toStringAsFixed(2): '0')} %"));
  print("Porc mujeres adultas: ${cntWomen>0? (womenAdult/cntWomen*100).toStringAsFixed(2): '0'} %");
  print("Porc hombres jóvenes: ${cntMen>0? (menYoung/cntMen*100).toStringAsFixed(2): '0'} %");
  print("Hombres solteros: $menSingle, Mujeres solteras: $womenSingle");
}
