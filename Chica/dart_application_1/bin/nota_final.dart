void main(){
  double not1 = 35, not2 = 20, not3 = 50;
  double examFinal = 30;
  double trabajoFinal = 10;

  double promedioParciales = (not1 + not2 + not3) / 3;

  double notaFinal =
      promedioParciales * 0.55 + examFinal * 0.30 + trabajoFinal * 0.15;

  print("La calificación final es: ${notaFinal}");
}