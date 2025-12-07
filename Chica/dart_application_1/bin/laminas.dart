void main() {
  double largoL = 4;
  double anchoL = 1.5;
  double areaLamina = largoL * anchoL;
  double areaPieza = 0.5;

  int piezas = areaLamina ~/ areaPieza;
  double desperdicio = areaLamina - (piezas * areaPieza);

  print("Piezas: $piezas");
  print("Desperdicio: $desperdicio");
}
