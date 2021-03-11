var nivelAcima = true;

void main() {
  var dentroMain = true;

  void minhaFuncao() {
    var dentrodaminhaFuncao = true;

    void funcaoAninhada() {
      var dentrodaFuncaoAninhada = true;

      assert(nivelAcima);
      assert(dentroMain);
      assert(dentrodaminhaFuncao);
      assert(dentrodaFuncaoAninhada);
    }
  }
}
