void main() {
  double deuda = 12775;
  double pago = 100;
  double pendiente = deuda;
  int n = 0;

  print("Pago\tMonto\tPendiente");

  while (pendiente > 0) {
    pendiente -= pago;
    if (pendiente < 0) pendiente = 0;

    n++;
    print("$n\t$pago\t$pendiente");

    pago += 125;
  }

  print("Número de pagos: $n");
  print("Último pago: ${pago - 125}");
}
