void main() {
  int somarElementos(List<int> numbers){
    int soma = 1;
    for (int index = 0; index < numbers.length; index++){
      soma*= numbers[index];
    }
    
    return soma;
  };
  
  print(somarElementos([1,2,3]));
}
