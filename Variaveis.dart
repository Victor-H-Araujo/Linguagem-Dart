// VARIÁVEIS
/* Toda variável em Dart se refere a um objeto (instancia de uma classe) aonde você pode
usar construtores para inicializar variáveis.*/

// TIPO: NÚMEROS
void main() {
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
}

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

// TIPO: CONSTANTE
void main() {
  const msPorSegundo =
      1000; // Tornando uma variável constante em seu tempo de compilação.
  const segundoAteRepetir =
      5; // Para declarar um valor como constante basta definir como const.
  const msAteRepetir = msPorSegundo * segundoAteRepetir;

  print(msAteRepetir);

  msAteRepetir = 12;
  /* Erro, pois variáveis do tipo constante não podem assumir outros valores,
  para corrigir teriamos de tirar o const e declarar como outro tipo, não sendo constante ou ainda
  corrigir o valor no ato de declaração apenas. */

  print(msAteRepetir); // Não será impresso, apresentará erro.
}

// TIPO: STRING

void main() {
  var s1 = 'Aspas simples funcionam bem para Strings literais';
  var s2 = " Aspas duplas funcionam muito bem para String";
  var s3 = 'É \ fácil escapar do delimitador de String';
  var s4 = "É fácil também usar outro delimitador";

  print(s1);
  print(s2);
  print(s3);
  print(s4);

  /*  Pode-se colocar o valor de uma expressão dentro de uma String usando ${expressão}. Se a impressão for um 
  identificador(uma variável já como valor), podemos pular as chaves {}. Para pegar a String correspondente a 
  variváel(objeto), Dart pode chamar a variável usando o método toString(). */

  var frase = 'interpolação de string';

  print('Dart usa $frase'); // chamada simples da variável
  print('Dart usa ${frase.toUpperCase()}'); // chamada da variavél com método.

  // Pode-se concatenar string apenas definindo string literais uma ao lado da outra ou ainda, ou com o operador +.

  var frase2 = 'A Concatenação de'
      'String'
      "Ocorre até mesmo"
      'Em linhas quebradas';

  print('A frase 2 é: $frase2'); // Chamada da variável string

  var frase3 = 'A Concatenação de' +
      'String' +
      "Ocorre até mesmo" +
      'Em linhas quebradas';

  print('A frase 3 é: $frase3');

  // Outro meio para criar uma string em multiplas linhas seria usando aspas triplas com qualquer estilo de aspas, duplas ou simples.

  var frase4 = '''A Concatenação de String 
               Ocorre até mesmo 
               Em linhas quebradas''';

  print(
      'A frase 4 é: $frase4'); // A saída será formatada de acordo com a string.
}
