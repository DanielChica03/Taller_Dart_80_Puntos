import 'dart:io';
void main(){
print("¿Cual es la temperatura en grados Fahrenheit el dia de hoy?");
double Fahr = double.parse(stdin.readLineSync()!);
if (Fahr > 85){
  print("Se recomienda practicar natacion");
}
else if (Fahr >= 70 && Fahr < 85){
  print("Se recomienda practicar tenis");
}
else if (Fahr >=32 && Fahr < 70){
  print("Se recomienda practicar golf");
}
else if (Fahr <32 && Fahr >=10){
  print("Se recomienda practicar esqui");
}
else{
  print("Se recomienda marchar");
}
}