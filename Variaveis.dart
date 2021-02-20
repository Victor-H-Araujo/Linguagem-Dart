// Variáveis
/* Toda variável em Dart se refere a um objeto (instancia de uma classe) aonde você pode
usar construtores para inicializar variáveis.*/
void main() {
  // tipos de números:
  int num = 1; // Para inteiros.
  double num2 = 2.65; // Para dupla precisão.
  /* Ambos int e double são subtipos de numeros. Você pode usar-los para operações bá-
  sicas, assim como também irá encontrar métodos para eles.(Ex: abs(), ceil(), floor() 
  etc) */
  double num3 = 1; // Equivale a 1.0
  // Exemplo de integer e double de forma literal(String):
  var num4 = 1;
  var num5 = 2.3;

  print(num4 + num5); // Retonnará 3.3

  // Como transformar a String em um número e vice versa:

  void main() {
    var um = int.parse('1'); // String em int
    var umPontoum = double.parse('1.1'); // String em double
    String umEString = 1.toString(); // Int em string
    String piEString = 3.14159.toStringAsFixed(2); // double em String

    print("O Valor de num é: ${um}");
    print("O valor do ponto flutuante é: $umPontoum");
    print("A  string inteira é: $umEString");
    print("A string pi é: $piEString");
  }
}
