import 'package:calculadora_imc/calculadora_imc.dart' as calculadora;
import 'package:test/test.dart';

void main() {
  test('calcular imc', () {
    expect(calculadora.calcularIMC(98, 1.77), 31);
  });
}
