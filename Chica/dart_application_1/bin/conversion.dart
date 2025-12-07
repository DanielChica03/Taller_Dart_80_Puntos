void main() {
  double metros = 9;
  double pulgadas = metros * 39.27;
  int pies = pulgadas ~/ 12;
  double pulgadasRestantes = pulgadas % 12;

  print("$metros metros = $pies pies y ${pulgadasRestantes.toStringAsFixed(2)} pulgadas");
}
