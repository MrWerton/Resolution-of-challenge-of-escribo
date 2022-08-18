import 'dart:io';

void main() {
  int pause = 0;
  while (pause != 1) {
    print("### Por favor, nos informe um valor: ###");
    var value = stdin.readLineSync();
    if (value != null) {
      try {
        int numberConverted = int.parse(value);
        pause = 1;
        return sum(numberConverted);
      } catch (_) {
        print('!!! O valor informado não é um número !!!');
      }
    }
  }
}

void sum(int value) {
  int total = 0;
  if (value < 0) {
    print('O valor não pode ser negativo');
  }
  for (int i = 0; i < value; i++) {
    if (i % 3 == 0 || (i % 5) == 0) {
      total += i;
    }
  }
  print(
      'A soma dos numeros positivos menores que $value e divisíveis por 3 e 5 é: $total');
}
