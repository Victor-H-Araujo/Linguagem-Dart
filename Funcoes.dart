// FUNÇÕES

/* E importante saber que, em Dart, até mesmo funções são objetos(variáveis) e elas
tem um tipo: Funções (Function). Isso quer dizer que funções podem ser atribuidas a 
valores de variáveis ou passadas como argumento para outras funções.*/


void main() {
// Relembraremos de algumas variáveis(objeto) do tipo Map:
var gasesNobres = {
  2: 'hélio',
  10: 'neon',
  18: 'argon',
}
// Exemplo de implementação de função:

  bool ehNobre(int numeroAtomico) {
    return _gasesNobres[numeroAtomico] != null;
  }
/* A função ehNobre(int numeroAtomico) recebe um valor int, no caso, uma variável chamada
numero atômico. Retorna um valor booleano, true ou false, verificando se o número passado
está no Map "Gases Nobres", correspondendo a algum gás lá presente.*/

/* Embora seja recomendado anotações de tipo para APIs, funções ainda irão funcionar se
omitirmos os tipos, em parametros. */

  ehNobre(numeroAtomico) {
    return _gasesNobres[numeroAtomico] != null;
  }

  // Se a função tiver apenas uma expressão, pode-se usar a sintax abreviada:
  bool ehNobre(int numeroAtomico) => _gasesNobres[numeroAtomico] != null;

  /* A sintax =>(expressão) é uma forma abreviada para {return (expressão);.}
  Essa anotação por vezes é chamada de "sintax com seta". Apenas uma expressão
  não sendo uma declaração, pode aparecer depois da seta (=>) e dos dois pontos.
  Por exemplo, não se pode usar a declaração if nessa ocasião, porém pode ser 
  usado uma expressão de condição. */

// PARAMETROS:

  /* Funções podem conter quantos parametros posicionais forem necessários. Eles
  podem vir seguidos de seguidos, cada um, por parametros nomeados ou por parametros
  opicionais posicionais, mas não por ambos.

  Algumas APIs, como Flutter com seus widget construtores,  usam apenas parametros
  nomeados sempre para oarametros que forem obrigatórios.

  Você pode usar virgulas finais quando passar argumentos para função ou quando 
  você for definir o parametro das funções. */

  // PARAMETROS NOMEADOS:

  // São opcionais , exceto que eles sejam especificamente marcados como obrigatorio.
 
  // Quando definir a função, use: {param1, param2, ...} para especificar parametros nomeados 
  // Conjuntos de sinais [aberto] e [fechado]
  void sinaleiro({bool aberto, bool fechado}){

  }
  /* Quando você chama uma função, voce pode especificar o parametro nomeando usando
  'nomeParam: valor". Por exemplo: */

  sinaleiro(aberto: true, fechado: false);

  /* Apesar de parametros nomeados serem do tipo opcional de parametros voce pode usar
  comentários neles com @required para indicar como um parametro obrigatório, se for necessário.*/

  const Scrollbar({Key key, @required Widget child})

  /* Se alguem tentar criar o Scrollbar sem especificar o argumento child, irá ocorrer erro.
  NOTA: para usar a anotação @required, será necessário o package meta, importado em
  packag:meta/meta.dart. */

// PARAMETROS OPCIONAIS DE POSIÇÃO:
/* Envolve um conjunto de parametros da função em [] marcando aqueles que forem parametros de posição
opcionais. */

  String dizer(String de, String msg, [String dispositivo]){
    var resultado = '$de diz $msg';
    if (dispositivo != null) {
      resultado = '$resultado com o $dispositivo';
    }
    return resultado;
  }
  // Segue o exemplo de chamada desta função acima sem o parametro opcional:

  dizer('Victor', 'Olá');

  // Segue o exemplo usando o terceiro parametro, que é opcional:

  dizer('Victor', 'Olá', 'sinal fraco');
  
}

// VALORES DE PARAMETROS PADRÃO

/* Sua função pode usar = para definir um valor padrão para ambos os tipos de parametros, nomeados ou posicionais.
Se não for definido um valor padrão, o valor padrão será tomado como null (nulo). */
void sinaleiro({bool aberto = false, bool fechado = false}){
  // Tornando o conjunto de parametros, aberto e fechado, falsos como valores padrão.

}
// aberto se tornará verdadeiro, fechado se tornará falso.
sinaleiro(aberto: true);

// NOTA: códigos antigos talvez usem dois pontos (:) ao inves de = para o conjunto de valores padrões em parametros nomeados

String dizer(String quem, String msg, [String dispositivo = 'carga de sinal fraca']){
  var resultado = '$quem says $msg com o $dispositivo';
  return resultado;
}

print(dizer('Victor', 'Olá'));

// Você tambem pode passar listas ou mapas como valores padrões.abstract

void fazerAlgo({List<int> lista = const[1, 2, 3], Map<String, String> presentes = const{
  'primeiro': 'papel', // Especificando uma lista com valor padrão de parametro e um map com valor padrão de parametro.
  'segundo': 'balão',
  'terceiro': 'boneco'
}}) {
  print('lista: $lista');
  print('presentes: $presentes');

}

//  A FUNÇÃO MAIN()

// Todo app tem uma função de alto nivel, que é main(), ela serve de ponto de entrada para o app.abstract
// A função main() retorna vazio e tem como opcional List<String> como argumento de paramtro.

void main(){
  consultorSeletivo('#simples texto aqui')
  ..texto = 'Clique aqui!'; // .. que procede o codigo é chamado de cascada. Voce pode realizar multiplas
  ..onClique.listen(textoReserva); // operações com os membros de um unico obejto.
 
}
 void main(List<String> argumentos){
   print(argumentos);

   print(argumentos.length == 2);
   print(int.parse(argumentos[0] == 1));
   print(argumentos[1] == 'teste');

 }