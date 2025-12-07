void main() {
  double chelines = 100;
  double dracmasG = 500;
  double pesetas = 1000;

  double pesetasDesdeChelines = chelines * 9.56871;

  double pesetasDracmas = dracmasG * 0.88607;
  double francosFranceses = pesetasDracmas / 20.110;

  double dolares = pesetas / 122.499;
  double liras = pesetas / 0.09289;

  print("Chelines a pesetas: $pesetasDesdeChelines");
  print("Dracmas griegos a francos franceses: $francosFranceses");
  print("Pesetas a dólares: $dolares");
  print("Pesetas a liras italianas: $liras");
}
