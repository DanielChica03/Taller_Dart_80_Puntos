void main() {
  int num = 2;
  int encontrados = 0;

  while (encontrados < 3) {
    int suma = 0;

    for (int i = 1; i < num; i++) {
      if (num % i == 0) suma += i;
    }

    if (suma == num) {
      print(num);
      encontrados++;
    }

    num++;
  }
}
