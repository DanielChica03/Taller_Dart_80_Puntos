void main() {
  double suma = 0;
  double term = 1;
  int n = 0;
  while (suma + term <= 1.99) {
    suma += term;
    term /= 2;
    n++;
  }
  print("Términos: $n  Suma: ${suma.toStringAsFixed(6)}");
}
