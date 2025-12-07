import 'dart:io';

void main() {
  int total = 0;
  int agric = 0;
  int mineraSur = 0;
  int mineraTotal = 0;
  Map<int,int> contTrab = {1:0,2:0,3:0,4:0,5:0}; // suma trabajadores por actividad
  Map<int,int> cntAct = {1:0,2:0,3:0,4:0,5:0};
  Map<int,int> industrialByLoc = {}; // location->count for activity 2

  while (true) {
    print("Actividad (1-5, 0 fin): ");
    int act = int.parse(stdin.readLineSync()!);
    if (act == 0) break;
    print("Localización (1-4): ");
    int loc = int.parse(stdin.readLineSync()!);
    print("Nro trabajadores: ");
    int trab = int.parse(stdin.readLineSync()!);

    total++;
    if (act == 1) agric++;
    if (act == 3) {
      mineraTotal++;
      if (loc == 2) mineraSur++;
    }
    cntAct[act] = (cntAct[act] ?? 0) + 1;
    contTrab[act] = (contTrab[act] ?? 0) + trab;
    if (act == 2) industrialByLoc[loc] = (industrialByLoc[loc] ?? 0) + 1;
  }

  print("Porc empresas agrícolas: ${total>0? (agric/total*100).toStringAsFixed(2) : '0'} %");
  print("Porc mineras del sur respecto total de mineras: ${mineraTotal>0? (mineraSur/mineraTotal*100).toStringAsFixed(2) : '0'} %");
  for (var act in contTrab.keys) {
    int c = cntAct[act] ?? 0;
    print("Promedio trabajadores actividad $act: ${c>0? (contTrab[act]! / c).toStringAsFixed(2) : '0'}");
  }
  // localizacion con mayor empresas industriales
  int bestLoc = 0, bestCnt = 0;
  industrialByLoc.forEach((loc,cnt){ if(cnt>bestCnt){bestCnt=cnt; bestLoc=loc;}});
  print("Localización con más empresas industriales: ${bestLoc==0? 'N/A': bestLoc}");
}
