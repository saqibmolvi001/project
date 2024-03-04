import 'dart:io';
import 'dart:math';
import 'auth.dart';

import 'data.dart';

void main() {

  var auth = Auth();
  var data = Data();
  Random random = Random();

  int randomInt = random.nextInt(10000);
  print('welcome');
  print('');

  data.cars.asMap().forEach((index, element) {
    print('');
    print('$index for ${element['name']}');
  });
  print("Select Category");
  var carOptions = stdin.readLineSync();
  var carTypes = data.cars[int.parse(carOptions!)];
  carTypes['cars'].asMap().forEach((index, element) {
    print('');
    print('$index for ${element}');
  });
  print("Select car ");
  var option = stdin.readLineSync();

  var car = carTypes['cars'][int.parse(option!)];

  print('You Select ${data.cars[int.parse(carOptions)]['name']}-${car}');
  print('price $randomInt \$');
}
