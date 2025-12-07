void main (){
  double A = 3;
  double B = 5;
  double C = 7; 
  double D = 0;

  if (D == 0){
    double OP = (A-C)*(A-C);
    print ("El resultado de la operacion es: $OP");
  } else {
    double OP2 = (A-B)*(A-B)*(A-B)/D;
    print ("El resultado de la operacion es: $OP2");
  }
}