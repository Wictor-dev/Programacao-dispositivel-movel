void main() {
  double nota1 = 8.0;
  double nota2 = 2.5;
  double nota3 = 0.2;
  
  double media = (nota1 + nota2 + nota3) / 3;
  print(media);
  if (media >= 7){
    print('Aprovado');
  } else if (media >= 4) {
    print('Prova final');
  } else {
    print('Reprovado');
  }
}
