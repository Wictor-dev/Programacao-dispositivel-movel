void main() {
  double salario = 1500.50;
  double desconto = 0.07;
  
  for (int i = 0; i < 3; i ++){
    double salarioDescontado = (salario + (salario * desconto));

    print(r'No primeiro Ano o salário é R$ ' +'$salarioDescontado');
    desconto = desconto - 0.01;
  }



}
