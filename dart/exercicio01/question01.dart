import 'dart:math';

void main() {
  var n1 = 10;
  int n2 = 2;
  double n3 = 1.2;
  //a)
  print(n1 % n2);
  
  //b)
  print(n1 ~/ n2);
  
  //c) 
  print(pow(n1, n2));
  
  //d)
  print(n1 is int); // Always true 
  print(n3 is int);
  
  //e)
  print(n1 is! int); // always false
  print(n3 is! int);
}
