void main() {
  double contado = 500;
  double cuota = 60;

  double totalCuotas = cuota * 12;

  double recargo = ((totalCuotas - contado) / contado) * 100;

  print("Recargo: $recargo%");
}
