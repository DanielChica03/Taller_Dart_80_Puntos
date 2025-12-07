void main() {
  var sueldo = 100000;
  double ven1 = 50000;
  double ven2 = 35000;
  double ven3 = 10000;

  double comision = (ven1 + ven2 + ven3) * 0.10;
  double total = sueldo + comision;

  print("La comision recibida es de:$comision");
  print("Total a recibir:$total");
}
