void main() {
  int M = 452;
  int N = 197;

  double B1 = 132;
  double B2 = 180;
  double B3 = 7.50;
  double B4 = 14.50;

  int bultosHarina = M ~/ 24;
  int cajasAceite = N ~/ 15;

  int sobranteHarina = M % 24;
  int sobranteAceite = N % 15;

  double ingreso = (bultosHarina * B1) +
                   (cajasAceite * B2) +
                   (sobranteHarina * B3) +
                   (sobranteAceite * B4);

  print("Ingreso total: $ingreso");
}