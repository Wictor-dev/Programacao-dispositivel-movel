void main() {
  int chamarFuncao(List<int> numbers, int Function(List<int>) f){
    return f(numbers);
  }
  
  int somarElementos(List<int> numbers){
    int soma = 1;
    for (int index = 0; index < numbers.length; index++){
      soma*= numbers[index];
    }
    
    return soma;
  };
  
  print(chamarFuncao([1,2,3], somarElementos));
}
