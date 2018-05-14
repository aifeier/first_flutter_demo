
printInteger(int number){
  print('$number is a number');
}

main(List<String> arguments){
  print(arguments);
  var number = 42;
  printInteger(number);
//  assert(number == 41);
  var x = 123.00.toStringAsFixed(0);
  var rs = r'this is Unicode string哈哈';
  print('\u{2665}\u{1f600}' );

}
