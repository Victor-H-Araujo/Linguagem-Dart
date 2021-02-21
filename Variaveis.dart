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

  // Criando uma raw String:

  var frase5 =
      'Victor irá \n para casa \n da avó'; // A raw string ignora todos os códigos especiais de formatação.

  print(frase5);
}

// String constantes:
void main() {
  // Estes funcionam como string constante:
  const numconst = 0;
  const boolconst = true;
  const stringconst = 'uma string constante';
  // Estes não funcionam como string constante:
  var numconst2 = 0;
  var boolconst2 = true;
  var stringconst2 = 'uma string constante';
  const listconst = [1, 2, 3];

  const stringconstvalida = '$numconst $boolconst $stringconst';
  /* Só serão tratadas como constante, seja ela numerica, booleana
  ou string contanto qe seja inicialmente declaradas como constante. */
  // const stringconstinvalida = '$numconst2 $boolconst2 $stringconst2 $listconst';
  print(stringconstvalida);
}

// TIPO: BOOLEANO

void main() {
  /* Para representar valores booleanos, Dart tem o tipo chamado bool.
  Apenas dois objetos contem o tipo bool: os literais booleanos que são
  falsos ou verdadeiros. O qual ambos são constantes durante a compilação.*/
  var nome = '';

  print(nome.isEmpty); // checando se a variavel nome esta vazia.

  var hitpoints = 0;

  print(
      'hitpoints é menor ou igual a 0? \n${hitpoints <= 0}'); //Verificando se é zero.

  var unicornio;

  print('Unicornio é valor nulo? \n${unicornio == null}');

  var divisao = 10 / 2;

  print('O valor de divisão não é um numero? \n${divisao.isNaN}');
}

// TIPO: LISTA
void main() {
  /* Provavelmente a coleção mais comum em quase todas as linguagens de programação é array, ou grupo ordenado de objetos, ou ainda
  estrutura de dados. Em Dart, um grupo de objetos ordenados podem ser um list, geralmente chamadas de listas */

  var lista = [1, 2, 3];
  // int lista2 = [1, 2, 3];  Acusaria erro.
  var lista2 = ['a', 33, 'segundo', '#R78'];

  // NOTA: Dart interpreta que o tipo list seja por padrão lis<int> (Vero tipo inteiro)
  print('A primeira lista é: $lista \nA segunda lista é: $lista2');
  // Para tornar obrigatório somente a entrada de inteiros na lista a formatação abaixo deverá ser usada:
  List<int> listaDeInteiros = [
    1,
    2,
    3
  ]; // Se for inserido um dado não inteiro haverá erro.
  print('A lista de inteiros é: $listaDeInteiros');

  /* Você pode adicionar uma virgula no ultimo item de uma lista, a virgula final não afeta na lista, ela pode
  ajudar a previnir erros de copiar e colar.*/

  var listaComVirgula = [
    'carro',
    'barco',
    'avião',
  ];

  print('A lista com virgula no final é: $listaComVirgula');

  /* Lista usam indexação baseada a partir do zero, onde zero é o primeiro indice do primeiro valor e
  list.length - 1 é o indice do ultimo valor. Você pode pegar o tamanho de uma lista e referencia-la atravez
  dos valores dos indices. */

  var lista3 = [
    1,
    2,
    3,
  ];

  print('O tamanho da lista é: ${lista3.length == 3}');

  print('O indice 1 da lista é: ${lista3[1]}');

  // Para criar uma lista que seja do tipo constante basta adicionar const antes da lista []
  var listaConstante = const [
    1,
    2,
    3,
  ];

  /* Dart contém um operador de aumento (...) e um operador acautelado de aumento, o qual providencia
  um modo mais conciso para para inssersão de multiplos valores dentro da coleção, neste caso, da lista.*/

  var list4 = [1, 2, 3];
  var list5 = [0, ...list4];
  print('A lista 5 contem: $list5');

  var list6;
  list5 = [
    0,
    ...?list6
  ]; // chamando a list5 novamente, pois já foi declarada, agora apenas alterando conteudo.
  print('A lista 5 agora contem: $list5');

  /* Dart permite o uso da coleção if e coleção for, qaonde você pode usar para construir coleções usando condi-
  cional if e o laço de repetição for.*/

  // Exemplo de uso da coleção if paraa criar lista com três ou quatro itens:
  var palavras = ['Casa', 'jarro', 'plantas', if (promoActive) 'saida'];

  var numeros = [1, 2, 3, 4];
  var listaString = ['#0', for (var i in numeros) '#$i'];

  print(listaString[1]); // A saída será #1

  // O tipo lista contem vários outros métodos para sua manipulação, para mais detalhes, consultar collections e Generics.
}
