void main() {
  int A = 2, B = 9, C = 6, D = 2;
  int N = A * 1000 + B * 100 + C * 10 + D; 
  int resto = N % 100; 
  int redondeado;

  if (resto >= 50) {
    redondeado = ((N ~/ 100) + 1) * 100;
  } else {
    redondeado = (N ~/ 100) * 100;
  }

  print("N = $N");
  print("Redondeado = $redondeado");
}
