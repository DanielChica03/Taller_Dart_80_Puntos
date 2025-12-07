void main() {
  String nombre = "Chica";
  double compra = 8000;
  double descuento = 0;

  if (compra < 500) descuento = 0;
  else if (compra <= 1000) descuento = compra * 0.05;
  else if (compra <= 7000) descuento = compra * 0.11;
  else if (compra <= 15000) descuento = compra * 0.18;
  else descuento = compra * 0.25;

  double pago = compra - descuento;

  print("Cliente: $nombre");
  print("Compra: $compra");
  print("Descuento: $descuento");
  print("Monto a pagar: $pago");
}
