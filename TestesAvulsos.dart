void main() {
  /* Em geral, um map é um objeto que associa a chaves de valores, ambos, chaves e valores, podem ser qualquer tipo
  de objeto. Cada chave ocorre apenas uma vez, mas pode-se usar o mesmo valor varias vezes. */

  var presentes = {
    // key:    valor
    'primeiro': 'bola',
    'segundo': 'chaveiro',
    'quinto': 'livro de ouro'
  };

  print(presentes);

  var gasesNobres = {2: 'helio', 3: 'neon', 4: 'radonio'};

  print(gasesNobres);

  // Pode-se criar, adicionar objetos  atraves do construtor de Map.

  presentes['quarto'] =
      'quebra cabeças'; // Adicionando uma chave e um valor ao map "presentes".

  print(presentes);

  var jogos = Map(); // Criando Map atraves do construtor.
  jogos['pra pc'] = 'pubg';
  jogos['pra mobile'] = 'pubg mobile';
  jogos['no steam'] = 'GTA V';

  print(jogos);

  // Checando uma chave e seu valor correspondente, atraves de booleano.

  print(presentes['primeiro'] == 'bola');

  // Checando se uma chave não consta no map usando valor logico como retorno

  print(presentes['sexto'] == null);

  // Usando.length para pegar o numero de pares, chave-valor, no map:

  print(presentes.length);

  // Para criar um  mapa que seja constante adicione const em sua definição:

  final mapConstante = const {
    1: 'segunda',
    2: 'terça',
  };

  // Se tentar adicionar:   mapconstante[3] = 'quarta'; irá ocorrer um erro.
  // Map suporta a extensão de operadores ... e ...? e a coleção de if e for, assim como as listas fazem.

}


