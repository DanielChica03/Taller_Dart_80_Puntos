void main() {
  int a = 2;

  int pares = 0;

  while (pares < 4) {
    int sumaA = 0;
    for (int i = 1; i < a; i++) {
      if (a % i == 0) sumaA += i;
    }

    int b = sumaA;
    int sumaB = 0;

    for (int i = 1; i < b; i++) {
      if (b % i == 0) sumaB += i;
    }

    if (sumaB == a && a < b) {
      print("$a y $b");
      pares++;
    }

    a++;
  }
}
