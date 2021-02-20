// Função print() pág. 11

void main() {
  // Funções como main que não retornam um valor explicito, tem o tipo de retorno void.
  int num = 5;

  print(
      "Este é o número $num \n"); // Print pode ser com '..' ou ainda "...", sendo string literal.
}

/* A representação de números ou string's podem ser através de variáveis como no código acima
ou ainda por concatenação no caso de strings, interporlação sem a necessidade de um espaço ' ',
ou ainda simplesmente chamando  pela própria variável, vejam  os códigos abaixo, respectivamente. */
void main() {
  var nome1 = "Araujo";
  var nome2 = "Victor";

  print(nome1 + ' ' + nome2); // concatenação de string
}

// Abaixo, interpolação:
void main() {
  int num = 5;
  var nome2 = "Victor";

  print("$num $nome2");
}

// Chamando pela própria variável:
void main() {
  int num1 = 2;
  int num2 = num1 + 2;

  print(num2); // A operação poderia ser expressa aqui também.
}

// Usando o método toStringAsPrecision() da class num para conseguir um arredondamento:
void main() {
  double num1 = 2.29;
  double num2 = num1 + 2.2;

  print('${num2.toStringAsPrecision(2)}'); // Dentro de ${} cabe uma expressão.
}
