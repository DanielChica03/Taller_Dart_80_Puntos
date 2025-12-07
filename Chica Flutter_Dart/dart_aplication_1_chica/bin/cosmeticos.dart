void main() {
  double dep1 = 30000;
  double dep2 = 40000;
  double dep3 = 35000;
  double salario = 1000;

  double total = dep1 + dep2 + dep3;
  double limite = total * 0.33;

  double pago1 = salario;
  double pago2 = salario;
  double pago3 = salario;

  if (dep1 > limite) pago1 += salario * 0.20;
  if (dep2 > limite) pago2 += salario * 0.20;
  if (dep3 > limite) pago3 += salario * 0.20;

  print("Departamento 1 recibe: $pago1");
  print("Departamento 2 recibe: $pago2");
  print("Departamento 3 recibe: $pago3");
}
