import 'dart:math';//Esta libreria es para usar la funcion pow
void main (){
  double D1 = 10;
  double D2 = 8;
  double D3 = 40;
  
  double areaT = (D1 * D2) / 2;
  double areaC = D2 * pow(D1,2);//El pow es para elevar un numero las veces que se quiera en este caso 2
  double areaR = D1 * D2;

  if (D3 == areaT){
    print ("La figura es un Triangulo");
  } else if (D3 == areaC){
    print ("La figura es un Circulo");
  } else if (D3 == areaR){
    print ("La figura es un Rectangulo");
  } else {
    print ("La figura no es ninguna de las opciones");
  }
}