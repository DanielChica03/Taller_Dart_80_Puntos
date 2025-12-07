void main() {
  int a1 = 6;
  int d = 5;

  int a12 = a1 + (12 - 1) * d;

  int suma = 0;
  for (int i = 0; i < 12; i++) {
    suma += a1 + i * d;
  }

  print("a12 = $a12");
  print("Suma = $suma");
}
