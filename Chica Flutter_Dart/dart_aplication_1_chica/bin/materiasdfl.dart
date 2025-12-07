void main (){
  double ExamMate = 40;
  double nm1 = 35;
  double nm2 = 30;
  double nm3 = 25;
  double ExamFisica = 38;
  double nf1 = 30;
  double nf2 = 28; 
  double ExamQuimica = 39;
  double nq1 = 17;
  double nq2 = 29;
  double nq3 = 36;

  double PromedioMath = ExamMate*0.90 + ((nm1 + nm2 + nm3)/3)*0.10;
  double PromedioFisica = ExamFisica*0.80 + ((nf1 + nf2)/2)*0.20;
  double PromedioQuimica = ExamQuimica*0.85 + ((nq1 + nq2 + nq3)/3)*0.15;
  double PromedioFinal = (PromedioMath + PromedioFisica + PromedioQuimica)/3;
  print("El promedio de matematicas es: $PromedioMath");
  print("El promedio de fisica es: $PromedioFisica"); 
  print("El promedio de quimica es: $PromedioQuimica");
  print("El promedio final es: $PromedioFinal");



}