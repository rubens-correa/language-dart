import 'dart:io';

int plusDiv(int numb) {
  int plusInt = 0;

  for (int i = 1; i < numb; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      plusInt += i;
    }
  }
  return plusInt;
}

void main() {
  stdout.write("Digite um número inteiro positivo: ");
  String input = stdin.readLineSync()!;

  try {
    int numb = int.parse(input);
    if (numb > 0) {
      int result = plusDiv(numb);
      print("O somatório dos múltiplos de 3 ou 5 menores que $numb é: $result");
    } else {
      print("Por favor, digite um número inteiro positivo.");
    }
  } catch (e) {
    print("Por favor, digite um número válido.");
  }
}
