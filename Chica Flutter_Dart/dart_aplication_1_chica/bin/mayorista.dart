void main() {
  int X = 48000;
  double Y = 6;
  double K = 42000;

  double costo = (X / 12) * Y;
  double ganancia = K - costo;

  double porcentaje = (ganancia / costo) * 100;

  print("Porcentaje de ganancia: $porcentaje%");
}
