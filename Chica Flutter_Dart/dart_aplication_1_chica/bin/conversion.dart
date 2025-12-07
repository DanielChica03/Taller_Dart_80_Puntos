void main() {
  print("Fahrenheit | Celsius | Kelvin | Rankine");

  for (int F = -50; F <= 250; F += 10) {
    double C = 5 * (F - 32) / 9;
    double R = F + 459.67;
    double K = C + 273.15;

    print("$F\t|\t${C.toStringAsFixed(2)}\t|\t${K.toStringAsFixed(2)}\t|\t${R.toStringAsFixed(2)}");
  }
}
