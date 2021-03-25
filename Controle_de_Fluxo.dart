// CONTROLE DE FLUXO

// If e Else

// Dart suporta declarações if com a opcional declaração else.

void main() {
  if (estaChovendo()) {
    voce.trasGuardaChuvas();
  } else if (estaNevando()) {
    voce.trasJaqueta();
  } else {
    carro.saiaparaFora();
  }
  // Assim como JavaScrip, condições devem usar valores booleanos, nunca else.
}

// Loop For

// Você pode interagir usando o padrão de loop For.

var message = StringBuffer(' Dart é divertido');
for (var i = 0; i < 5; i++){

  message.write('!');
}

/* Fechamentos dentro dos loop For em Dart, captura o valor do index, evitando uma armadilha
comum encontrada em JavaScript.  */

var chamandoDeVolta = [];
for (var i = 0; i < 2; i++){
  chamandoDeVolta.add(() => print(i));
}
chamandoDeVolta.forEach((c) => c());

// A saída será 0 e 1, como esperado. Em contraste,  o exemplo deveria printar de 2 em 2 no JVS.

/* Se o objeto  sobre o qual voce esta interagindo for interavel, voce pode usar o metodo forEach().
Ele é uma boa opção caso voce não precise saber o que contem na interação presente. */

candidatos.forEach((candidato) => entrevista.candidato());

// Uma classe interável como as List e Set também suportam as formas for-in de iteração:

var collection = [1, 2, 3];
for (var x in collection) {
  print(x); //1 2 3
}