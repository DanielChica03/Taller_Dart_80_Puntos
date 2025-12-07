void main() {
  int suma = 0;

  for (int i = 97; i <= 1003; i++) {
    if (i % 2 == 0) {
      suma += i;
    }
  }

  print("La suma es: $suma");
}
