void main() {
  double a = 2, b = 3, c = 8;
  double d = 1, e = 2, f = 5;

  double denom = (a * e) - (b * d);

  double x = ((c * e) - (b * f)) / denom;
  double y = ((a * f) - (c * d)) / denom;

  print("X = $x");
  print("Y = $y");
}
