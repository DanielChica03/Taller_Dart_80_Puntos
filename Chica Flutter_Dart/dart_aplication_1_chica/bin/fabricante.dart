void main (){
  double monto = 800000;

  if (monto > 500000){
    double PD = monto * 0.55;
    double Banco = monto * 0.30;
    double Credito = monto * 0.15;
    print ("Dinero invertido:$PD");
    print("Dinero prestodo del banco:$Banco");
    print("Dinero del credito:$Credito");
  }else{
    double PD = monto *0.70;
    double Credito = monto * 0.30;
    double interes = Credito * 0.20;
    print ("Dinero invertido:$PD");
    print("Dinero del credito:$Credito");
    print("Interes del credito:$interes");
  }
}