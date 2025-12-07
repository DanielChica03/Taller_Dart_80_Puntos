void main() {
  double horasNormales = 48;
  double pagoHora = 20000;
  double horasExtras = 12;
  int hijos = 3;

  double sueldoBase = horasNormales * pagoHora;

  double recargo = pagoHora * 0.25;      
  double pagoExtraHora = pagoHora + recargo;
  double extra = horasExtras * pagoExtraHora;

  double asignaciones = 25000 + (17300 * hijos) + 18000;

  double deducciones = sueldoBase * 0.05 +
                       sueldoBase * 0.02 +
                       sueldoBase * 0.07;

  double neto = sueldoBase + extra + asignaciones - deducciones;

  print("Asignaciones: $asignaciones");
  print("Deducciones: $deducciones");
  print("Sueldo neto: $neto");
}
