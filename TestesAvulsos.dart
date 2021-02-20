void main() {
  var num4 = 1;
  var num5 = 2.3;

  print(num4 + num5);

  var um = int.parse('1'); // String em int
  var umPontoum = double.parse('1.1'); // String em double
  String umEString = 1.toString(); // Int em string
  String piEString = 3.14159.toStringAsFixed(2); // double em String

  print("O Valor de num é: ${um}");
  print("O valor do ponto flutuante é: $umPontoum");
  print("A  string inteira é: $umEString");
  print("A string pi é: $piEString");
}
