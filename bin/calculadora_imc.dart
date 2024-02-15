import 'dart:io';
import 'package:calculadora_imc/calculadora_imc.dart' as calculadora;
import 'package:calculadora_imc/pessoa.dart';

void main(List<String> arguments) {
  bool continuar = true;
  do {
    print('--------------------------------------------------');
    print('----------      CALCULADORA DE IMC      ----------');
    print('--------------------------------------------------');

    print('Informe o seu nome');
    var nome = stdin.readLineSync();

    print('Informe o seu peso atual');
    var peso = stdin.readLineSync();

    print('Informe sua altura');
    var altura = stdin.readLineSync();

    Pessoa pessoa = Pessoa(nome.toString(), double.parse(peso.toString()),
        double.parse(altura.toString()));

    print('Gostaria de calcular o seu IMC?');
    var simNao = stdin.readLineSync();

    if (simNao.toString().toLowerCase() == "sim") {
      var imc = calculadora.calcularIMC(
          double.parse(peso.toString()), double.parse(altura.toString()));

      String classificacao = calculadora.classificar(imc);
      print(
          'Seu IMC é: ${imc.truncate()} e sua classificação é $classificacao');
    } else {
      print('Sem problemas ${pessoa.getNome()}');
    }

    print('Deseja calcular o IMC novamente? (Sim/Não)');
    var c = stdin.readLineSync();

    continuar = c?.toLowerCase() == "sim" ? true : false;
  } while (continuar == true);
}
