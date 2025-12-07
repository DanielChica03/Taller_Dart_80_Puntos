void main(){
  double inversion = 75000;
  double tasa = 0.10;

  double intereses = inversion * tasa;
  print ("El interes generado es: $intereses");

  if(intereses > 7000){
    double total = inversion + intereses;
    print ("El total de la inversion es: $total");
  } else {
    print ("La inversion no alcanzó el interés esperado.");
  }

}