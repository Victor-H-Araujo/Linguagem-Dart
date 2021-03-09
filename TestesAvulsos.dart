void main() {
  String dizer(String de, String msg, [String dispositivo]) {
    var resultado = '$de diz $msg';
    if (dispositivo != null) {
      resultado = '$resultado com o $dispositivo';
    }
    return resultado;
  }

  // Segue o exemplo de chamada desta função acima sem o parametro opcional:
  print(dizer('Victor', 'Olá'));
  // Segue o exemplo usando o terceiro parametro, que é opcional:

  print(dizer('Victor', 'Olá', 'sinal fraco'));
}