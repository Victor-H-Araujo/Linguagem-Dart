void main() {
    var chamandoDeVolta = [];
    for (var i = 0; i < 2; i++){
      chamandoDeVolta.add(() => print(i));
    }
    chamandoDeVolta.forEach((c) => c());
}
