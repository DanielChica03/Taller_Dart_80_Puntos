import 'dart:math';

void main() {
  double P = 5, Q = 6;

  double expresion = (pow(P, 3) + pow(Q, 4) - 2 * pow(P, 2)).toDouble();

  if (expresion > 680) {
    print("Cumple: P=$P, Q=$Q");
  } else {
    print("No cumple la expresión");
  }
}
