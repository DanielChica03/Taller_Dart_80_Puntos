void main() {
  double km = 320;
  double total = 5000;

  if (km > 300 && km <= 1000) {
    total += (km - 300) * 200;
  } else if (km > 1000) {
    total += (1000 - 300) * 200;
    total += (km - 1000) * 150;
  }

  print("Total a pagar: $total");
}
