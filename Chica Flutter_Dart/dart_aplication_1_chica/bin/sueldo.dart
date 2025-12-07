void main() {
  double horas = 16;
  double precioHora = 8000;

  double sueldoBase = horas * precioHora;
  double descuento = sueldoBase * 0.20;
  double neto = sueldoBase - descuento;

  print("Salario neto: $neto");
}
