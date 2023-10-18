import 'dart:io';

class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);

  double calcularIMC() {
    if (altura == 0) {
      throw Exception("Altura não pode ser zero");
    }
    return peso / (altura * altura);
  }
}

void main() {
  stdout.write("Informe o nome: ");
  final nome = stdin.readLineSync();

  stdout.write("Informe o peso (em kg): ");
  final peso = double.parse(stdin.readLineSync()!);

  stdout.write("Informe a altura (em metros): ");
  final altura = double.parse(stdin.readLineSync()!);

  try {
    final pessoa = Pessoa(nome!, peso, altura);
    final imc = pessoa.calcularIMC();
    print("IMC de ${pessoa.nome}: $imc");
  } catch (e) {
    print("Erro: $e");
  }
}
