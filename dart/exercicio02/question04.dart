import 'dart:math';

void main() {
  num elevarPotenciaTradicional(int base, int expoente){
    return pow(base, expoente);
  }
  
  var elevarPotenciaArrow = (int base, int expoente) => pow(base, expoente);
  
  print(elevarPotenciaTradicional(2,2));
  print(elevarPotenciaArrow(2,2));
}
